import 'package:diplomka/entities/article.dart';
import 'package:equatable/equatable.dart';

class ArticleDetailPageState extends Equatable {
  const ArticleDetailPageState({required this.article});
  final Article article;

  @override
  List<Object?> get props => [article];
}

class ArticleDetailPageLoading extends ArticleDetailPageState {
  ArticleDetailPageLoading()
      : super(article: Article(title: '', text: 'text', id: 0, imageUrl: ''));
}

class ArticleDetailPageLoaded extends ArticleDetailPageState {
  const ArticleDetailPageLoaded({required super.article});
}
