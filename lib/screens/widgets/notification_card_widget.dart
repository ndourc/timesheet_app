import 'package:flutter/material.dart';
import 'package:timesheet_manager_app/common/app_colours.dart';

class NotificationCardWidget extends StatelessWidget {
  const NotificationCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.someColour3,
        borderRadius: BorderRadius.circular(20)
      ),
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontSize: 17,
                    color: AppColor.mainAccent,
                    fontWeight: FontWeight.bold
                  ),
                  children: const [
                    TextSpan(text: "Good Morning ",
                    style: TextStyle(
                      fontWeight: FontWeight.normal)
                      ),
                    TextSpan(text: "Nomvula Nkomo",
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                  )     
                ),
               ]
              )
             ),
            const SizedBox(
                height: 10,
              ),
              Text("Today you have 9 new notifications. \nAlso, there are 3 applications from new clients. \n1. Antemoeba Histolytica. \n2. Protozoa. \n3. Fungi.",
              style: TextStyle(
                fontSize: 15,
                fontStyle: FontStyle.italic,
                color: AppColor.someColour5,
                height: 1.5,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}