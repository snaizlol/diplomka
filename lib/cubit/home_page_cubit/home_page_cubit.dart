import 'dart:core';

import 'package:diplomka/cubit/home_page_cubit/home_page_state.dart';
import 'package:diplomka/entities/fotbalek_entity.dart';
import 'package:diplomka/entities/pub_entity.dart';
import 'package:diplomka/entities/table_entity.dart';
import 'package:diplomka/repositories/fotbalkee_repo/fotbalkee_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit(this.repo) : super(HomePageStateLoading());

  FotbalkeeRepository repo;

  load() {
    emit(
      HomePageStateLoading(),
    );

    List<PubEntity> pubs = repo.getAll();
    Future.delayed(
      const Duration(
        seconds: 2,
      ),
      () {
        emit(
          HomePageStateLoaded(list: pubs),
        );
      },
    );
  }

  getTablesByBrand(String brand) {
    List<PubEntity> tablesByBrand = repo.getByName(brand);

    return tablesByBrand;
  }

  addPub() {
    List<PubEntity> pubs = repo.getAll();

    repo.addPub(
      PubEntity(
        id: pubs.length + 1,
        name: 'Klubovna',
        adress: 'General',
        rating: 4,
        cooks: true,
        beers: [
          BeerEntity(
            price: 40,
            name: 'Kozel',
          ),
        ],
        fotbalek: FotbalekEntity(brand: 'Rosengaart', rating: 4, isFree: false),
      ),
    );
    emit(
      HomePageStateLoaded(
        list: pubs,
      ),
    );
  }

  randomNumber(int from, int to) {}
}
