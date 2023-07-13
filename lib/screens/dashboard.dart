import 'package:flutter/material.dart';
import 'package:timesheet_manager_app/common/app_colours.dart';
import 'widgets/employee_details_widget.dart';
import 'widgets/header_widget.dart';
import 'widgets/notification_card_widget.dart';

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
          HeaderWidget(),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        children: [
                          const NotificationCardWidget(),
                          const SizedBox(height: 20,),
                          EmployeeDetailsWidget()
                        ],
                      ),
                    ),
                  ),
                  Expanded(

                    child: Container(),    
                )
              ],
            )
          ),
        ],
      ),
    );
  }
}