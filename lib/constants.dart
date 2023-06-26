import 'package:flutter/material.dart';
import 'package:timesheet_manager_app/utilities/colours.dart';

var myAppBar = AppBar(
  backgroundColor: greenColor,
);

var myDrawer = Drawer(
          child: Column(
            children: [
            DrawerHeader(
              child: Icon(Icons.groups),
            ),
            ListTile(
              leading: Icon(
                  Icons.admin_panel_settings,
                ),
                title: Text('Admin Dashboard'),
                onTap: () {},
            ),
            ListTile(
              leading: Icon(
                  Icons.stacked_line_chart,
                ),
                title: Text('Client Statistics'),
                onTap: () {},
              ),
            ListTile(
              leading: Icon(
                  Icons.settings,
                ),
                title: Text('Settings'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                    Icons.calendar_month,
                  ),
                  title: Text('Calendar'),
                  onTap: () {},
                ),
              ListTile(
                leading: Icon(
                    Icons.toggle_off_outlined,
                  ),
                  title: Text('Change Theme'),
                  onTap: () {},
                ),
                ListTile(
                leading: Icon(
                    Icons.logout_rounded,
                  ),
                  title: Text('Logout'),
                  onTap: () {},
              ),
            ],
          ),
        );