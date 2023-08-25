import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  TextEditingController firstNameController = TextEditingController() ;
  TextEditingController lastNameController = TextEditingController() ;
  TextEditingController dateOfBirthController = TextEditingController() ;
  TextEditingController phoneNumberController = TextEditingController() ;
  TextEditingController emailController = TextEditingController() ;
  TextEditingController bankAccountController = TextEditingController() ;

  @override
  Widget build(BuildContext context) {

    return Scaffold(body: SafeArea(
      child: Container(
        height: double.infinity,
        child: Center(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  TextField(
                      controller: firstNameController,
                      decoration: const InputDecoration(labelText: 'FirstName')
                  ) ,
                  TextField(
                      controller: lastNameController,
                      decoration: const InputDecoration(labelText: 'LastName')
                  ) ,
                  TextField(
                      controller: dateOfBirthController,
                      decoration: const InputDecoration(labelText: 'DateOfBirth')
                  ) ,
                  TextField(
                      controller: phoneNumberController,
                      decoration: const InputDecoration(labelText: 'PhoneNumber')
                  ) ,
                  TextField(
                      controller: emailController,
                      decoration: const InputDecoration(labelText: 'Email')
                  ) ,
                  TextField(
                      controller: bankAccountController,
                      decoration: const InputDecoration(labelText: 'BankAccount')
                  ) ,
                  const SizedBox(height: 32,) ,
                  SizedBox(
                    width: double.infinity,
                    child: MaterialButton(
                      color: Colors.green,
                      textColor: Colors.white,
                      child: const Text('SUBMIT'),
                        onPressed: (){

                    }),
                  ) ,

                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
