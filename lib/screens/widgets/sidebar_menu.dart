import 'package:flutter/material.dart';
import 'package:timesheet_manager_app/common/app_colours.dart';

class SideBar extends StatefulWidget {
const SideBar({Key? key}) : super(key: key);


  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar>{

  @override
  Widget build(BuildContext context){
    return Drawer(
      elevation: 0,
      child: Container(
        color: AppColor.accent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text('N D O U  R C',
                style: TextStyle(
                  color: AppColor.someColour7,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Segoe UI Emoji',
                ),
                ),
            ),
            DrawerListTile(
              title: 'Dashboard',
              icon: Icons.dashboard,
              color: 0x00000000,
              press: () {},
            ),
            DrawerListTile(
              title: 'Client WorkSpace',
              icon: Icons.workspaces_filled,//icon: Icon(Icons.place),
              color: 0x00000000,
              press: () {},
            ),
            DrawerListTile(
              title: 'Calendar',
              icon: Icons.calendar_month,//icon: Icon(Icons.place),
              color: 0x00000000,
              press: () {},
            ),
            DrawerListTile(
              title: 'Report',
              icon: Icons.report_sharp,//icon: Icon(Icons.place),
              color: 0x00000000,
              press: () {},
            ),
            DrawerListTile(
              title: 'Settings',
              icon: Icons.settings,//icon: Icon(Icons.place),
              color: 0x00000000,
              press: () {},
            ),
            DrawerListTile(
              title: 'Logout',
              icon:Icons.logout,
              color: 0x00000000,
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
/*ListTile(
    leading: Icon(
        Icons.admin_panel_settings,
      ),
      title: Text('Admin Dashboard'),
  ),
  ListTile(
    leading: Icon(
        Icons.stacked_line_chart,
      ), */

class DrawerListTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final int color;
  final VoidCallback press;

  const DrawerListTile({Key? key,
     required this.title,
     required this.icon,
     required this.color,
     required this.press
     }
    );

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      onTap: press,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(icon,
              color: const Color(0xFFFF9000),
            ),
          ),
          title: Text(
            title,
          style: TextStyle(
            color: AppColor.someColour7,
            fontWeight: FontWeight.bold,
            fontFamily: 'Segoe UI Emoji',
        )
      ),
    );
  }
}