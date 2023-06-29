import 'package:flutter/material.dart';
import 'package:timesheet_manager_app/common/app_colours.dart';
import 'widgets/header_widget.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColor.someColour7,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          HeaderWidget(
            
          ),
        ],
      ),
    );
  }
}