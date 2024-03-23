import 'package:diplomka/repositories/articles_repo/aritcles_repository.dart';
import 'package:diplomka/repositories/articles_repo/mockup_articles.dart';
import 'package:diplomka/repositories/fotbalkee_repo/mockup_pubs.dart';

class ArticlesRepositoryImplementation implements ArticlesRepository {
  ArticlesRepositoryImplementation(this.repo);
  final ArticlesMockupRepository repo;
  @override
  getArticleAll() {
    final data = repo.list;
    for (var pubArticle in PubMockupRepository.listOfPubs) {
      for (var i = 0; i < pubArticle.pubNews.length; i++) {
        data.add(pubArticle.pubNews[i]);
      }
    }

    return data;
  }

  @override
  getArticleById(int id) {
    final article = repo.list.where((element) => element.id == id).first;
    return article;
  }
}
