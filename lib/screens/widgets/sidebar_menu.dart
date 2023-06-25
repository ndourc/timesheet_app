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
              child: Text('Some Text',
                style: TextStyle(
                  color: AppColor.someColour7,
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                ),
                ),
            ),
            DrawerListTile(
              title: 'Dashboard',
              icon: 'Icons.dashboard',
              press: () {},
            ),
            DrawerListTile(
              title: 'Dashboard',
              icon: 'Icons.dashboard',
              press: () {},
            ),
            DrawerListTile(
              title: 'Dashboard',
              icon: 'Icons.dashboard',
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final String title, icon;
  final VoidCallback press;

  const DrawerListTile({Key key,
     this.title,
     this.icon,
     this.press});
  @override
  Widget build(BuildContext context) {
    return  ListTile(
      onTap: press,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.login),
          ),
          title: Text(title,
          style: TextStyle(
            color: AppColor.someColour7,
        )
      ),
    );
  }
}