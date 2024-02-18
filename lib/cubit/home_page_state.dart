import 'package:diplomka/entities/pub_entity.dart';

class HomePageState {
  HomePageState({required this.list});
  final List<PubEntity> list;
}

class HomePageStateLoading extends HomePageState {
  HomePageStateLoading() : super(list: []);
}

class HomePageStateLoaded extends HomePageState {
  HomePageStateLoaded({required super.list});
}

class HomePageStateError extends HomePageState {
  HomePageStateError() : super(list: []);
}
