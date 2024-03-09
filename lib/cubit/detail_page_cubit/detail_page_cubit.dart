import 'package:diplomka/cubit/detail_page_cubit/detail_page_state.dart';
import 'package:diplomka/entities/pub_entity.dart';
import 'package:diplomka/repositories/fotbalkee_repo/fotbalkee_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailPageCubit extends Cubit<DetailPageState> {
  DetailPageCubit(this.repo) : super(DetailPageStateLoading());

  FotbalkeeRepository repo;

  load(int id) {
    emit(
      DetailPageStateLoading(),
    );

    PubEntity pub = repo.getById(id);

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
