import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:db_test_project/data/model/Customer.dart';
import 'package:db_test_project/data/repository/main_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  final IMainRepository repository;
  MainBloc(this.repository) : super(MainInitial()) {
    on<MainEvent>((event, emit) async {
      try {
        if (event is AddCustomer) {

        }
      } catch (e) {
        debugPrint(e.toString());
      }
    });
  }
}
