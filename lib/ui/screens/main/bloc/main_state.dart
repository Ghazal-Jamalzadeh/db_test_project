part of 'main_bloc.dart';

abstract class MainState {}

class MainInitial extends MainState {}

class Success extends MainState{
  Success() ;
}

class Error extends MainState {
  String message;
  Error({ this.message = 'مشخصات مشتری تکراری است'}) ;
}
