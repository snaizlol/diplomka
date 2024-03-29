import 'package:diplomka/cubit/pub_detail_page_cubit/detail_page_state.dart';
import 'package:diplomka/entities/pub.dart';
import 'package:diplomka/repositories/pubs_repo/pubs_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailPageCubit extends Cubit<DetailPageState> {
  DetailPageCubit(this.repo) : super(DetailPageStateLoading());

  PubsRepository repo;

  load(int id) {
    emit(
      DetailPageStateLoading(),
    );

    Pub pub = repo.getById(id);

    Future.delayed(
      const Duration(
        seconds: 1,
      ),
      () {
        emit(
          DetailPageStateLoaded(id: id, pub: pub),
        );
      },
    );
  }
}
