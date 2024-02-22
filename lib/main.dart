import 'package:flutter/material.dart';
import 'package:food/screens/home_screen.dart';
import 'package:food/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // apatoto login
        home: LoginScreen());
  }
}
