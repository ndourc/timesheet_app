import 'package:flutter/material.dart';
import 'package:timesheet_manager_app/common/app_colours.dart';

class NotificationCardWidget extends StatefulWidget {
  const NotificationCardWidget({super.key});

  @override
  State<NotificationCardWidget> createState() => _NotificationCardWidgetState();
}

class _NotificationCardWidgetState extends State<NotificationCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColor.someColour3,
        borderRadius: BorderRadius.circular(20)
      ),
      padding: EdgeInsets.all(7),
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
                  children: [
                    TextSpan(text: "Employee Details",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColor.mainColor
/*---------------------------------------------------------------------------------
child: Row(
          children: [
             Text('Dashboard',
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
              // ADD - Dropdown button style - filter by year, month or even week
              // navigationIcon(icon: Icons.search),
              // navigationIcon(icon: Icons.send),
              navigationIcon(icon: Icons.notifications_none_rounded),
            ],
          )
        ],
      ),
---------------------------------------------------------------------------------*/    
                  ),     
                ),
               ]
              ),
             ),
            // Spacer(),
            // Container(     
            // ),
            const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: AppColor.someColour7,
                    child: Icon(Icons.person,
                    size: 35,
                    color: AppColor.mainColor,
                    ),
                  ),
                  const SizedBox(width: 25),
                  Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontSize: 17,
                          color: AppColor.mainAccent,
                          fontWeight: FontWeight.bold
                  ),
                      children: [
                      TextSpan(text: 'Role',
                         style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 10,
                          color: AppColor.mainColor,
                        ),
                        ),
                        TextSpan(text: '\nMobile App Dev',
                         style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: AppColor.mainColor,
                        ),
                        ),
                      ]
                    ),
                    ),
                    const SizedBox(width: 20),
                    Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontSize: 17,
                          color: AppColor.mainAccent,
                          fontWeight: FontWeight.bold
                  ),
                      children: [
                      TextSpan(text: 'Phone',
                         style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 10,
                          color: AppColor.mainColor,
                        ),
                        ),
                        TextSpan(text: '\n+263 71 256 4412',
                         style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: AppColor.mainColor,
                        ),
                        ),
                      ]
                    ),
                    ),
                    const SizedBox(width: 20),
                    Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontSize: 17,
                          color: AppColor.mainAccent,
                          fontWeight: FontWeight.bold
                  ),
                      children: [
                      TextSpan(text: 'Email',
                         style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 10,
                          color: AppColor.mainColor,
                        ),
                        ),
                        TextSpan(text: '\nndou.research@gmail.com',
                         style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: AppColor.mainColor,
                        ),
                        ),
                      ]
                    ),
                    ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColor.someColour7,
                      borderRadius: BorderRadius.circular(100),
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.list,
                        color: AppColor.mainColor,
                      ),
                      const SizedBox(width: 5),
                      Text('Client List',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColor.mainColor,
                     ),
                    ),
                  ],
                  )
                 ),
                 const SizedBox(width: 15),
                 Container(
                    decoration: BoxDecoration(
                      color: AppColor.someColour7,
                      borderRadius: BorderRadius.circular(100),
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  child: Row(
                  children: [
                    Icon(Icons.login_rounded,
                    color: AppColor.mainColor,
                    size: 20,
                    ),
                    const SizedBox(width: 8),

                    Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontSize: 17,
                          color: AppColor.mainAccent,
                          fontWeight: FontWeight.bold
                  ),
                      children: [
                      TextSpan(text: '08:00',
                         style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: AppColor.mainColor,
                        ),
                        ),
                      TextSpan(text: '\nAvg check-in time',
                         style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 10,
                          color: AppColor.mainColor,
                        ),
                        ),
                      ]
                    ),
                    ),
                  ],
                 ),
                 ),
                 const SizedBox(width: 15),
                 Container(
                    decoration: BoxDecoration(
                      color: AppColor.someColour7,
                      borderRadius: BorderRadius.circular(100),
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                 child: Row(
                  children: [
                    Icon(Icons.logout_rounded,
                    color: AppColor.mainColor,
                    size: 20,
                    ),
                    const SizedBox(width: 8),
                    Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontSize: 17,
                          color: AppColor.mainAccent,
                          fontWeight: FontWeight.bold
                  ),
                      children: [
                      TextSpan(text: '17:00',
                         style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: AppColor.mainColor,
                        ),
                        ),
                      TextSpan(text: '\nAvg check-out time',
                         style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 10,
                          color: AppColor.mainColor,
                        ),
                        ),
                      ]
                    ),
                    ),
                  ],
                 ),
                 ),
                 const SizedBox(width: 15),
                 Container(
                    decoration: BoxDecoration(
                      color: AppColor.someColour7,
                      borderRadius: BorderRadius.circular(100),
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  child: Row(
                    children: [
                      Text('Download \nDetails',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColor.mainColor,
                     ),
                    ),
                    const SizedBox(width: 5),
                    Icon(Icons.arrow_drop_down,
                      color: AppColor.mainColor,
                      ),
                  ],
                  )
                 ),
                ],
              ),
            ],
          ),
          Spacer(),
          // Image.asset('assets/n')
        ],
      ),
    );
  }
}