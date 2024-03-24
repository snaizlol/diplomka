import 'package:diplomka/cubit/articles_cubit/aritcles_detail_page_state.dart';
import 'package:diplomka/entities/article.dart';
import 'package:diplomka/repositories/articles_repo/aritcles_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArticleDetailPageCubit extends Cubit<ArticleDetailPageState> {
  ArticleDetailPageCubit(this.repo) : super(ArticleDetailPageLoading());

  ArticlesRepository repo;

  load(int id) {
    emit(ArticleDetailPageLoading());

    final Article article = repo.getArticleById(id);
    emit(
      ArticleDetailPageLoaded(article: article),
    );
  }
}
