import 'package:diplomka/entities/pub.dart';
import 'package:equatable/equatable.dart';

class HomePageState extends Equatable {
  const HomePageState({
    required this.list,
  });
  final List<Pub> list;

  @override
  List<Object?> get props => [list];
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
