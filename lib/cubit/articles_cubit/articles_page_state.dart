import 'package:diplomka/entities/article_entity.dart';

class ArticlesPageState {}

class ArticlesPageInit extends ArticlesPageState {
  ArticlesPageInit(this.list);
  final List<ArticleEntity> list;
}

class ArticlesPageLoading extends ArticlesPageState {
  ArticlesPageLoading() : super();
}

class ArticlesPageLoaded extends ArticlesPageState {
  ArticlesPageLoaded(this.list) : super();
  final List<ArticleEntity> list;
}

class ArticlesPageError extends ArticlesPageState {
  ArticlesPageError(this.errorMessage) : super();
  String errorMessage;
}
