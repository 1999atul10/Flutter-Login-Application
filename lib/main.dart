import 'package:flutter/material.dart';
import 'package:flutter_assignment_login/EventPage.dart';
import 'package:flutter_assignment_login/WrongDetails.dart';
import 'package:flutter_assignment_login/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
