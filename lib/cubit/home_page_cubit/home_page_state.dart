import 'package:diplomka/entities/pub.dart';

class HomePageState {
  HomePageState({
    required this.list,
  });
  final List<Pub> list;
}

class HomePageStateLoading extends HomePageState {
  HomePageStateLoading()
      : super(
          list: [],
        );
}

class HomePageStateLoaded extends HomePageState {
  HomePageStateLoaded({
    required super.list,
  });
}
