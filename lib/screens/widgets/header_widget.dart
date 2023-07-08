import 'package:flutter/material.dart';
import 'package:timesheet_manager_app/common/app_colours.dart';
//import 'package:timesheet_manager_app/screens/dashboard.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget ({Key? key}) : super(key: key);

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Row(
          children: [
            const Text('Dashboard',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Segoe UI Emoji',
              fontWeight: FontWeight.bold,        
            ),
          ),
          const Spacer(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              navigationIcon(icon: Icons.search),
              navigationIcon(icon: Icons.send),
              navigationIcon(icon: Icons.notifications_none_rounded)
            ],
          )
        ],
      ),
    ); 
  }

Widget navigationIcon({icon}){
  return Icon(
    icon,
    color: AppColor.mainAccent,
    );
  }
}

