import 'package:diplomka/cubit/detail_page/detail_page_cubit.dart';
import 'package:diplomka/cubit/home_page/home_page_cubit.dart';
import 'package:diplomka/repositories/fotbalkee_repository.dart';
import 'package:diplomka/repositories/fotbalkee_repository_implementation.dart';
import 'package:diplomka/repositories/mockup_fotbalkee.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void register() {
  getIt.registerSingleton<PubMockupRepository>(PubMockupRepository());
  getIt.registerSingleton<FotbalkeeRepository>(
      FotbalkeeRepositoryImplementation(PubMockupRepository()));
  getIt.registerSingleton<FotbalkeeRepositoryImplementation>(
      FotbalkeeRepositoryImplementation(PubMockupRepository()));
  getIt.registerFactory<DetailPageCubit>(
      () => DetailPageCubit(getIt.get<FotbalkeeRepository>()));
  getIt.registerFactory<HomePageCubit>(
      () => HomePageCubit(PubMockupRepository()));
}
