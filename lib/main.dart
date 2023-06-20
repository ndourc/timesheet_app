import 'package:flutter/material.dart';
import 'package:timesheet_manager_app/responsive_screen/mobile_screen_layout.dart';
import 'package:timesheet_manager_app/responsive_screen/web_screen_layout.dart';
import 'package:timesheet_manager_app/screens/login_screen.dart';
import 'package:timesheet_manager_app/screens/signup_screen.dart';
import 'package:timesheet_manager_app/utilities/colours.dart';
import 'package:timesheet_manager_app/widgets/text_field_input.dart';
import 'responsive_screen/responsive_layout.dart';

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
      home: const MobileScreenLayout(),
    );
  }
}

