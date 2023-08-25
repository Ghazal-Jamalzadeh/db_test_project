import '../model/Customer.dart';

abstract class IMainDataSource {
  Future<bool> addCustomer(Customer data);
}

class MainDataSource implements IMainDataSource {
  @override
  Future<bool> addCustomer(Customer data) {
    // TODO: implement addCustomer
    throw UnimplementedError();
  }

}