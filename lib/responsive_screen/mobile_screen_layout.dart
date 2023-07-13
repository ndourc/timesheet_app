import 'package:flutter/material.dart';
import 'package:timesheet_manager_app/screens/widgets/constants.dart';
import 'package:timesheet_manager_app/utilities/colours.dart';
import 'package:timesheet_manager_app/utilities/my_box.dart';
import 'package:timesheet_manager_app/utilities/my_tile.dart';

class MobileScreenLayout extends StatefulWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  State<MobileScreenLayout> createState() => _MobileScreenLayoutState();
}
class _MobileScreenLayoutState extends State<MobileScreenLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      drawer: myDrawer,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 4,
          child: SizedBox(
            width: double.infinity,
            child: GridView.builder(
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4
                ),
              itemBuilder: (context, index){
                return const MyBox();
              }
            ),
          ),
          ),
          Expanded(
            child:
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index){
              return const MyTile();
              },
            ),
          ),
        ],
      ),
    );
  }
}