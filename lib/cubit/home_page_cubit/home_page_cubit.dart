import 'dart:core';

import 'package:diplomka/cubit/home_page_cubit/home_page_state.dart';
import 'package:diplomka/entities/pub_entity.dart';
import 'package:diplomka/repositories/fotbalkee_repo/pubs_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit(this.repository) : super(HomePageStateLoading());

  PubsRepository repository;

  load() {
    emit(
      HomePageStateLoading(),
    );

    List<PubEntity> pubs = repository.getAll();

    emit(
      HomePageStateLoaded(list: pubs),
    );
  }
}
