import 'package:flutter/material.dart';
import '../../common/app_colours.dart';

class NotificationCardSubWidgets extends StatelessWidget {
  const NotificationCardSubWidgets({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Row(
        children: [
          Text('Employee Details',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Segoe UI Emoji',
              fontWeight: FontWeight.bold,
              color: AppColor.mainAccent,        
            ),
          ),
          const Spacer(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              // ADD - Dropdown Download button style - filter by file type - cvs, xlsx or pdf
              navigationIcon(icon: Icons.search),
              navigationIcon(icon: Icons.send),
            ],
          ),
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



    // return Container(
    //   decoration: BoxDecoration(
    //     color: AppColor.someColour3,
    //     borderRadius: BorderRadius.circular(20)
    //   ),
    //   padding: EdgeInsets.all(20),
    //   child: Row(
    //     children: [
    //       Column(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [