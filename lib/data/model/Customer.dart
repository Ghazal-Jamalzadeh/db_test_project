import 'package:hive/hive.dart';
part 'Customer.g.dart';


@HiveType(typeId : 1 )
class Customer extends HiveObject {
  @HiveField(0)
  String firstName = '';
  @HiveField(1)
  String lastName = '';
  @HiveField(2)
  DateTime dateOfBirth = DateTime.now() ;
  @HiveField(3)
  String phoneNumber = '' ;
  @HiveField(4)
  String email = '';
  @HiveField(5)
  String bankAccount =  '' ;

  Customer({required this.firstName,
    required this.lastName,
    required this.dateOfBirth,
    required this.phoneNumber,
    required this.email,
    required this.bankAccount});
}