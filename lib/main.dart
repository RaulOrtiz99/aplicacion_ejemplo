import 'package:aplicacion_ejemplo/pages/home.dart';
import 'package:aplicacion_ejemplo/pages/homepage/homepage.dart';
import 'package:aplicacion_ejemplo/pages/loginpage/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        home: LoginPage());
  }
}
