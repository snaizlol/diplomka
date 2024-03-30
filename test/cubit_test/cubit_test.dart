import 'package:bloc_test/bloc_test.dart';
import 'package:diplomka/cubit/articles_cubit/aritcles_detail_page_state.dart';
import 'package:diplomka/cubit/articles_cubit/articles_detail_page_cubit.dart';
import 'package:diplomka/entities/article.dart';
import 'package:diplomka/repositories/articles_repo/aritcles_repository.dart';
import 'package:flutter_test/flutter_test.dart';
// ignore: depend_on_referenced_packages
import 'package:mocktail/mocktail.dart';

class MockArticlesRepository extends Mock implements ArticlesRepository {}

void main() {
  group('ArticleDetailPageCubit', () {
    late ArticleDetailPageCubit cubit;
    late ArticlesRepository mockRepo;

    setUp(() {
      mockRepo = MockArticlesRepository();
      cubit = ArticleDetailPageCubit(mockRepo);
    });

    tearDown(() {
      cubit.close();
    });

    test('initial state is ArticleDetailPageLoading', () {
      expect(cubit.state, ArticleDetailPageLoading());
    });

    blocTest<ArticleDetailPageCubit, ArticleDetailPageState>(
      'emits ArticleDetailPageLoading first and ArticleDetailPageLoaded when load is called successfully',
      build: () {
        when(() => mockRepo.getArticleById(any())).thenReturn(Article(
            id: 1,
            title: 'Test Article',
            text: 'Test text',
            imageUrl: 'test.jpg'));
        return cubit;
      },
      act: (cubit) => cubit.load(1),
      expect: () => [
        ArticleDetailPageLoading(),
        ArticleDetailPageLoaded(
          article: Article(
              id: 1,
              title: 'Test Article',
              text: 'Test text',
              imageUrl: 'test.jpg'),
        ),
      ],
    );
  });
}
