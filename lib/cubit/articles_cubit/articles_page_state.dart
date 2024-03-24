import 'package:diplomka/entities/article.dart';

class ArticlesPageState {}

class ArticlesPageInit extends ArticlesPageState {
  ArticlesPageInit(this.list);
  final List<Article> list;
}

class ArticlesPageLoading extends ArticlesPageState {
  ArticlesPageLoading() : super();
}

class ArticlesPageLoaded extends ArticlesPageState {
  ArticlesPageLoaded(this.list) : super();
  final List<Article> list;
}
