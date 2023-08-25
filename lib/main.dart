import 'package:db_test_project/data/model/Customer.dart';
import 'package:db_test_project/ui/screens/main_screen.dart';
import 'package:db_test_project/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

void main() async{
  await Hive.initFlutter();
  Hive.registerAdapter(CustomerAdapter()) ;
  await Hive.openBox<Customer>(customerBoxName) ;
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: MainScreen(),
    );
  }
}

