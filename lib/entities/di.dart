import 'package:diplomka/cubit/home_page_cubit.dart';
import 'package:diplomka/repositories/fotbalkee_repository_implementation.dart';
import 'package:diplomka/repositories/mockup_fotbalkee.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void register() {
  getIt.registerSingleton<PubMockupRepository>(PubMockupRepository());
  getIt.registerFactory<HomePageCubit>(
      () => HomePageCubit(PubMockupRepository()));
}
