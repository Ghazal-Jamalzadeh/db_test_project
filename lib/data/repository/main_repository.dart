import 'package:db_test_project/data/data_source/main_data_source.dart';
import 'package:db_test_project/data/model/Customer.dart';

abstract class IMainRepository {
  Future<bool> addCustomer(Customer data);
}

class MainRepository implements IMainRepository {

  final IMainDataSource dataSource ;

  MainRepository(this.dataSource) ;

  @override
  Future<bool> addCustomer(Customer data) => dataSource.addCustomer(data) ;
  
}