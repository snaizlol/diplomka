import 'package:diplomka/cubit/articles_cubit/articles_detail_page_cubit.dart';
import 'package:diplomka/cubit/articles_cubit/articles_page_cubit.dart';
import 'package:diplomka/cubit/create_match_cubit/create_match_cubit.dart';
import 'package:diplomka/cubit/pub_detail_page_cubit/detail_page_cubit.dart';
import 'package:diplomka/cubit/home_page_cubit/home_page_cubit.dart';
import 'package:diplomka/cubit/match_detail_cubit/match_detail_cubit.dart';
import 'package:diplomka/cubit/matches_cubit/matches_cubit.dart';
import 'package:diplomka/repositories/articles_repo/aritcles_repository.dart';
import 'package:diplomka/repositories/articles_repo/articles_repository_implementation.dart';
import 'package:diplomka/repositories/articles_repo/mockup_articles.dart';
import 'package:diplomka/repositories/fotbalkee_repo/pubs_repository.dart';
import 'package:diplomka/repositories/fotbalkee_repo/pubs_repository_implementation.dart';
import 'package:diplomka/repositories/fotbalkee_repo/mockup_pubs.dart';
import 'package:diplomka/repositories/matches_repo/matches_repository.dart';
import 'package:diplomka/repositories/matches_repo/matches_repository_implementation.dart';
import 'package:diplomka/repositories/matches_repo/mockup_matches.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

Future<void> register() async {
  getIt.registerSingleton<PubMockupRepository>(
    PubMockupRepository(),
  );

  getIt.registerSingleton<PubsRepository>(
    PubsRepositoryImplementation(
      PubMockupRepository(),
    ),
  );
  getIt.registerSingleton<PubsRepositoryImplementation>(
    PubsRepositoryImplementation(
      PubMockupRepository(),
    ),
  );
  getIt.registerFactory<HomePageCubit>(
    () => HomePageCubit(
      getIt.get<PubsRepository>(),
    ),
  );

  getIt.registerSingleton<ArticlesMockupRepository>(ArticlesMockupRepository());
  getIt.registerSingleton<ArticlesRepository>(
      ArticlesRepositoryImplementation(ArticlesMockupRepository()));
  getIt.registerSingleton<MatchesMockupRepository>(MatchesMockupRepository());
  getIt.registerSingleton<MatchRepositoryImplementation>(
      MatchRepositoryImplementation(MatchesMockupRepository()));

  getIt.registerSingleton<MatchesRepository>(
      MatchRepositoryImplementation(MatchesMockupRepository()));

  getIt.registerFactory<CreateMatchCubit>(() => CreateMatchCubit(
      getIt.get<MatchesRepository>(), getIt.get<MatchesMockupRepository>()));

  getIt.registerFactory<MatchDetailCubit>(
      () => MatchDetailCubit(getIt.get<MatchesRepository>()));
  getIt.registerFactory<MatchCubit>(
      () => MatchCubit(getIt.get<MatchesRepository>()));

  getIt.registerFactory<DetailPageCubit>(
    () => DetailPageCubit(
      getIt.get<PubsRepository>(),
    ),
  );
  getIt.registerFactory<ArticleDetailPageCubit>(
      () => ArticleDetailPageCubit(getIt.get<ArticlesRepository>()));
  getIt.registerFactory<ArticlesPageCubit>(
      () => ArticlesPageCubit(getIt.get<ArticlesRepository>()));
}
