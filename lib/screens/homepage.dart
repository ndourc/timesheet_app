import 'package:flutter/material.dart';
import 'package:timesheet_manager_app/common/app_colours.dart';
import 'package:timesheet_manager_app/screens/widgets/sidebar_menu.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: AppColor.sideMenu,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Side navigation menu
            const Expanded(
              child: SideBar(
                
              )
            ),
            // Main body
            Expanded(
              flex: 4,
              child: Container(

              )
            ),
          ],
        ),
      ),
    );
  }
}