import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController dateOfBirthController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController bankAccountController = TextEditingController();

  String errorMessageFirstName = '';

  String errorMessageLastName = '';

  String errorMessageDateOfBirth = '';

  String errorMessagePhoneNumber = '';

  String errorMessageEmail = '';

  String errorMessageBankAccount = '';

  @override
  void initState() {
    super.initState();
    firstNameController.addListener(() {
        setState(() {
          errorMessageFirstName = '' ;
        });
    });
    lastNameController.addListener(() {
        setState(() {
          errorMessageLastName = '' ;
        });
    });
    dateOfBirthController.addListener(() {
        setState(() {
          errorMessageDateOfBirth = '' ;
        });
    });
    phoneNumberController.addListener(() {
        setState(() {
          errorMessagePhoneNumber = '' ;
        });
    });
    emailController.addListener(() {
        setState(() {
          errorMessageEmail = '' ;
        });
    });
    bankAccountController.addListener(() {
        setState(() {
          errorMessageBankAccount = '' ;
        });
    });
  }

  @override
  void dispose() {
    super.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    dateOfBirthController.dispose();
    phoneNumberController.dispose();
    emailController.dispose();
    bankAccountController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
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
                    decoration: InputDecoration(
                        labelText: 'FirstName',
                        errorText: errorMessageFirstName.isNotEmpty? errorMessageFirstName : null),
                  ),
                  TextField(
                      controller: lastNameController,
                      decoration: InputDecoration(
                          labelText: 'LastName',
                          errorText: errorMessageLastName.isNotEmpty ? errorMessageLastName : null)),
                  TextField(
                      controller: dateOfBirthController,
                      keyboardType: TextInputType.datetime,
                      decoration: InputDecoration(
                          labelText: 'DateOfBirth',
                          errorText: errorMessageDateOfBirth.isNotEmpty ? errorMessageDateOfBirth : null)),
                  TextField(
                      controller: phoneNumberController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          labelText: 'PhoneNumber',
                          errorText: errorMessagePhoneNumber.isNotEmpty ? errorMessagePhoneNumber : null)),
                  TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                          labelText: 'Email', errorText: errorMessageEmail.isNotEmpty ? errorMessageEmail : null)),
                  TextField(
                      controller: bankAccountController,
                      keyboardType: TextInputType.number,
                      maxLength: 16,
                      decoration: InputDecoration(
                          labelText: 'BankAccount',
                          errorText: errorMessageBankAccount.isNotEmpty ? errorMessageBankAccount : null)),
                  const SizedBox(
                    height: 32,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: MaterialButton(
                        color: Colors.green,
                        textColor: Colors.white,
                        child: const Text('SUBMIT'),
                        onPressed: () {
                          if(checkFieldsValidity()){
                            print('every thing is valid ') ;
                          }
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }

  bool checkFieldsValidity() {
    if (firstNameController.value.text.isEmpty) {
      setState(() {
        errorMessageFirstName = 'نام نمی تواند خالی باشد';
      });
      return false;
    } else if (lastNameController.value.text.isEmpty) {
      setState(() {
        errorMessageLastName = 'نام خانوادگی نمی تواند خالی باشد';
      });
      return false;
    } else if (dateOfBirthController.value.text.isEmpty) {
      setState(() {
        errorMessageDateOfBirth = 'تاریخ تولد نمی تواند خالی باشد';
      });
      return false;
    } else if (phoneNumberController.value.text.isEmpty) {
      setState(() {
        errorMessagePhoneNumber = 'شماره تلفن نمی تواند خالی باشد';
      });
      return false;
    } else if (emailController.value.text.isEmpty) {
      setState(() {
        errorMessageEmail = 'ایمیل نمی تواند خالی باشد';
      });
      return false;
    } else if (bankAccountController.value.text.isEmpty) {
      setState(() {
        errorMessageBankAccount = 'حساب بانکی نمی تواند خالی باشد';
      });
      return false;
    } else if (!isValidPhoneNumber(phoneNumberController.value.text)) {
      setState(() {
        errorMessagePhoneNumber = 'فرمت وارد شده برای شماره تلفن نادرست است';
      });
      return false;
    }else if(!isValidEmail(emailController.value.text)){
      setState(() {
        errorMessageEmail = 'فرمت وارد شده برای ایمیل نادرست است';
      });
      return false ;
    }else if(!isValidBankAccount(bankAccountController.value.text)){
      setState(() {
        errorMessageBankAccount = 'فرمت وارد شده برای شماره کارت بانکی نادرست است';
      });
      return false ;
    }

    return true;
  }

  bool isValidPhoneNumber(String? value) =>
      RegExp(r'(^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$)')
          .hasMatch(value ?? '');

  bool isValidEmail(String? value)=>
  RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(value ?? '');

  bool isValidBankAccount(String value) => value.length == 16 ;
}
