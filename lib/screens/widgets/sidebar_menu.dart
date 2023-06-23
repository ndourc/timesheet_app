import 'package:flutter/material.dart';
import 'package:timesheet_manager_app/common/app_colours.dart';

class SideBar extends StatefulWidget {
const SideBar({Key? key}) : super(key: key);


  @override
  _SideBarState createStateState() => _SideBarState();
}

class _SideBarState extends State<SideBar>{
  /*class SideBar extends StatefulWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  _SidebarState createState() => _SideBarState();
}
*/

  @override
  Widget build(BuildContext context){
    return Drawer(
      elevation: 0,
      child: Container(
        color: AppColor.sideMenu,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text('Dashboard Side Menu Text',
                style: TextStyle(
                  color: AppColor.accent,
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
                ),
            ),
            ListTile(
              leading: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.login),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}