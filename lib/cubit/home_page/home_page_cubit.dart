import 'package:diplomka/cubit/home_page/home_page_state.dart';
import 'package:diplomka/entities/fotbalek_entity.dart';
import 'package:diplomka/entities/pub_entity.dart';
import 'package:diplomka/entities/table_entity.dart';
import 'package:diplomka/repositories/mockup_fotbalkee.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit(this.repo) : super(HomePageStateLoading());

  PubMockupRepository repo;

  load() {
    emit(
      HomePageStateLoading(),
    );

    Future.delayed(
      const Duration(
        seconds: 2,
      ),
      () {
        emit(
          HomePageStateLoaded(list: repo.listOfPubs),
        );
      },
    );
  }

  addPub() {
    repo.addPub(
      PubEntity(
        id: repo.listOfPubs.length + 1,
        name: 'Klubovna',
        adress: 'General',
        rating: 4,
        cooks: true,
        beers: [BeerEntity(price: 40, name: 'Kozel')],
        fotbalek: FotbalekEntity(brand: 'Rosengaart', rating: 4, isFree: false),
      ),
    );
    emit(HomePageStateLoaded(list: repo.listOfPubs));
  }

  randomNumber(int from, int to) {}
}
