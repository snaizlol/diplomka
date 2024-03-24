import 'package:diplomka/entities/article.dart';

class ArticleDetailPageState {
  ArticleDetailPageState({required this.article});
  Article article;
}

class ArticleDetailPageLoading extends ArticleDetailPageState {
  ArticleDetailPageLoading()
      : super(article: Article(title: '', text: 'text', id: 0, imageUrl: ''));
}

class ArticleDetailPageLoaded extends ArticleDetailPageState {
  ArticleDetailPageLoaded({required super.article});
}
