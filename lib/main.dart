import 'package:ecommerce_app/pages/ForgotPassword.dart';
import 'package:flutter/material.dart';
// import './pages/Sign_up.dart';
// import './pages/Login.dart';
import './pages/ForgotPassword.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce_app',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      // home: SignUpPage(),
      // home: LoginPage(),
      home: ForgotPasswordPage(),
    );
  }
}
