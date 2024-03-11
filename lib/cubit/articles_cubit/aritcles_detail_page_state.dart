import 'package:diplomka/entities/article_entity.dart';

class ArticleDetailPageState {
  ArticleDetailPageState({required this.article});
  ArticleEntity article;
}

class ArticleDetailPageLoading extends ArticleDetailPageState {
  ArticleDetailPageLoading()
      : super(
            article:
                ArticleEntity(title: '', text: 'text', id: 0, imageUrl: ''));
}

class ArticleDetailPageLoaded extends ArticleDetailPageState {
  ArticleDetailPageLoaded({required super.article});
}
