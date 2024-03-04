class CreateMatchState {}

class CreateMatchLoading extends CreateMatchState {}

class CreateMatchLoaded extends CreateMatchState {}

class CreateMatchError extends CreateMatchState {
  CreateMatchError(this.errorMessage);
  String errorMessage;
}
