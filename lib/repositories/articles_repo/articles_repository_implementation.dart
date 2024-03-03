import 'package:diplomka/repositories/articles_repo/aritcles_repository.dart';
import 'package:diplomka/repositories/articles_repo/mockup_articles.dart';

class ArticlesRepositoryImplementation implements ArticlesRepository {
  ArticlesRepositoryImplementation(this.repo);
  final ArticlesMockupRepository repo;
  @override
  getAll() {
    final data = repo.list;
    return data;
  }

  @override
  getById(int id) {
    // TODO: implement getById
    throw UnimplementedError();
  }
}
