import 'package:flutter/material.dart';
import 'package:timesheet_manager_app/screens/homepage.dart';
import 'package:timesheet_manager_app/utilities/colours.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Time Sheet Manager',
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      home: HomePage(),
    );
  }
}
