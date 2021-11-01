import 'package:flutter/material.dart';
import 'package:http_post_request/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      theme: ThemeData(
          primaryColor: Colors.white,
          fontFamily: 'Poppins',
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            elevation: 0,
            foregroundColor: Colors.white,
          ),
          accentColor: Colors.redAccent,
          textTheme: TextTheme(
              headline1: TextStyle(fontSize: 22.0, color: Colors.redAccent),
              headline2: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.redAccent),
              bodyText1: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.blueAccent))
      ),
      home: const LoginPage(),
    );
  }
}
