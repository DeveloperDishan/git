import 'package:flutter/material.dart';

class LoginController {
  final formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final adminEmail = 'admin@gmail.com';
  final adminPassword = '123456';

  void login(BuildContext context) {
    if (formKey.currentState!.validate()) {
      if (emailController.text == adminEmail &&
          passwordController.text == adminPassword) {
        print('Email & password Matched');
      }
    } else {
      print('Form InValidate');
    }
  }
}
