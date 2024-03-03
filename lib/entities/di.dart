import 'package:diplomka/cubit/detail_page/detail_page_cubit.dart';
import 'package:diplomka/cubit/home_page/home_page_cubit.dart';
import 'package:diplomka/repositories/articles_repo/aritcles_repository.dart';
import 'package:diplomka/repositories/articles_repo/articles_repository_implementation.dart';
import 'package:diplomka/repositories/articles_repo/mockup_articles.dart';
import 'package:diplomka/repositories/fotbalkee_repo/fotbalkee_repository.dart';
import 'package:diplomka/repositories/fotbalkee_repo/fotbalkee_repository_implementation.dart';
import 'package:diplomka/repositories/fotbalkee_repo/mockup_fotbalkee.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void register() {
  getIt.registerSingleton<PubMockupRepository>(
    PubMockupRepository(),
  );
  getIt.registerSingleton<FotbalkeeRepository>(
    FotbalkeeRepositoryImplementation(
      PubMockupRepository(),
    ),
  );
  // getIt.registerSingleton<FotbalkeeRepositoryImplementation>(
  //   FotbalkeeRepositoryImplementation(
  //     PubMockupRepository(),
  //   ),
  // );
  getIt.registerFactory<DetailPageCubit>(
    () => DetailPageCubit(
      getIt.get<FotbalkeeRepository>(),
    ),
  );
  getIt.registerFactory<HomePageCubit>(
    () => HomePageCubit(
      getIt.get<FotbalkeeRepository>(),
    ),
  );
  getIt.registerSingleton<ArticlesMockupRepository>(ArticlesMockupRepository());
  getIt.registerSingleton<ArticlesRepository>(
      ArticlesRepositoryImplementation(ArticlesMockupRepository()));
}
