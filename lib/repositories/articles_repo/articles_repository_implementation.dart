import 'package:diplomka/entities/article.dart';
import 'package:diplomka/repositories/articles_repo/aritcles_repository.dart';
import 'package:diplomka/repositories/fotbalkee_repo/mockup_pubs.dart';

class ArticlesRepositoryImplementation implements ArticlesRepository {
  ArticlesRepositoryImplementation();
  @override
  getArticleAll() {
    final data = <Article>[];
    for (var pubArticle in PubMockupRepository.listOfPubs) {
      for (var i = 0; i < pubArticle.pubNews.length; i++) {
        data.add(pubArticle.pubNews[i]);
      }
    }

    return data;
  }

  @override
  getArticleById(int id) {
    final List<Article> articles = getArticleAll();
    final article = articles.where((article) => article.id == id).first;
    return article;
  }
}
