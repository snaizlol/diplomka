import 'package:diplomka/repositories/articles_repo/aritcles_repository.dart';
import 'package:diplomka/repositories/articles_repo/mockup_articles.dart';

class ArticlesRepositoryImplementation implements ArticlesRepository {
  ArticlesRepositoryImplementation(this.repo);
  final ArticlesMockupRepository repo;
  @override
  getArticleAll() {
    final data = repo.list;
    return data;
  }

  @override
  getArticleById(int id) {
    final article = repo.list.where((element) => element.id == id).first;
    return article;
  }
}
