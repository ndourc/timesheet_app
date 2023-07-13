import 'package:flutter/material.dart';
import 'package:timesheet_manager_app/utilities/colours.dart';

import '../../common/app_colours.dart';

var myAppBar = AppBar(
  backgroundColor: greenColor,
);

var myDrawer = Drawer(
          child: Column(
            children: const [
            DrawerHeader(
              child: Icon(Icons.groups),
            ),
            ListTile(
              leading: Icon(
                  Icons.admin_panel_settings,
                ),
                title: Text('Admin Dashboard'),
            ),
            ListTile(
              leading: Icon(
                  Icons.stacked_line_chart,
                ),
                title: Text('Client Statistics'),
              ),
            ListTile(
              leading: Icon(
                  Icons.settings,
                ),
                title: Text('Settings'),
              ),
              ListTile(
                leading: Icon(
                    Icons.calendar_month,
                  ),
                  title: Text('Schedule'),
                ),
              ListTile(
                leading: Icon(
                    Icons.toggle_off_outlined,
                  ),
                  title: Text('Change Theme'),
                ),
                ListTile(
                leading: Icon(
                    Icons.logout_rounded,
                  ),
                  title: Text('Logout'),
              ),
            ],
          ),
        );

Widget navigationIcon({icon}){
  return Icon(
    icon,
    color: AppColor.mainAccent,
    );
  }