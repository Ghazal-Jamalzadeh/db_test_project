

import 'package:hive/hive.dart';

import '../model/Customer.dart';

abstract class IMainDataSource {
  Future<bool> addCustomer(Customer data);
}

class MainDataSource implements IMainDataSource {

  final Box<Customer> box;

  MainDataSource(this.box) ;

  @override
  Future<bool> addCustomer(Customer customer) async {

    List<Customer> list = [] ;

    list.addAll(box.values.toList().where((element) =>
    element.firstName == customer.firstName &&
        element.lastName == customer.lastName &&
        element.dateOfBirth == customer.dateOfBirth ||
        element.email == customer.email
    ) ) ;

    if(list.isEmpty){
       await box.add(customer) ;
      return true ;
    }else {
      return false ;
    }

  }

}