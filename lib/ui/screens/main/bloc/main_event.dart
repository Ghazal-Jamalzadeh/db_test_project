part of 'main_bloc.dart';

abstract class MainEvent {}

class AddCustomer extends MainEvent {
  Customer customer ;
  AddCustomer({required this.customer}) ;
}
