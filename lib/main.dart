import 'package:flutter/material.dart';
import './pages/Sign_up.dart';
import './pages/Login.dart';
import './pages/ForgotPassword.dart';
import 'pages/Home.dart';
import 'pages/Home2.dart';
import 'pages/Home3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce_app',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Home3Page(),
        // '/': (context) => Home2Page(),
        // '/': (context) => HomePage(),
        '/signUpPage': (context) => SignUpPage(),
        '/login': (context) => LoginPage(),
        '/forgot-password': (context) => ForgotPasswordPage(),
      },
    );
  }
}
