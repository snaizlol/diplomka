import 'package:diplomka/cubit/articles_cubit/articles_page_state.dart';
import 'package:diplomka/entities/article.dart';
import 'package:diplomka/repositories/articles_repo/aritcles_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArticlesPageCubit extends Cubit<ArticlesPageState> {
  ArticlesPageCubit(this.repo) : super(ArticlesPageInit([]));

  ArticlesRepository repo;

  load() {
    emit(
      ArticlesPageLoading(),
    );

    List<Article> articles = repo.getArticleAll();

    emit(
      ArticlesPageLoaded(articles),
    );
  }
}
