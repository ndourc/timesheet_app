import 'package:flutter/material.dart';
import 'package:timesheet_manager_app/common/app_colours.dart';

class EmployeeDetailsWidget extends StatefulWidget {
   const EmployeeDetailsWidget({super.key});

  @override
  State<EmployeeDetailsWidget> createState() => _EmployeeDetailsWidgetState();
}

class _EmployeeDetailsWidgetState extends State<EmployeeDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.sideMenu,
        borderRadius: BorderRadius.circular(20)
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Employee List',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: AppColor.someColour,
             ),
            ),
            Container(
              decoration: BoxDecoration(
                color: AppColor.someColour7,
                borderRadius: BorderRadius.circular(100),
              ),
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              child: Text('View All',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColor.mainColor,
              ),
              ),
            ),
           ],
          ),
          Divider(
            thickness: 0.5,
            color: Colors.blue,
          ),
          Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [

            TableRow(
              decoration:  BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.blue,
                    width: 0.5,
                  ),
                ),
              ),
              children: [
                tableHeader('Full Name'),
                tableHeader('Phone Number'),
                tableHeader('Email Address'),
                //tableHeader('Role'),
              ],
            ),
            TableRow(
              decoration:  BoxDecoration(
                  border: Border(
                  bottom: BorderSide(
                    color: Colors.blue,
                    width: 0.5,
                  ),
                ),
              ),
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(1000),
                        //child: Image.asset,
                      ),
                      SizedBox(width: 10),
                      Text('name',
                      style: TextStyle(
                        color: AppColor.mainColor
                      ),
                      )
                    ],
                  ),
                ),
                Text('phoneNumber',
                  style: TextStyle(
                    color: AppColor.mainColor
                 ),
                ),
                Row(
                  children: [
                    // Container(
                    //   decoration: BoxDecoration(
                    //     shape: BoxShape.circle,
                    //     color: AppColor.mainColor,
                    //   ),
                    //   height: 10,
                    //   width: 10,
                    // ),
                    SizedBox(width: 10),
                    Text('email',
                      style: TextStyle(
                        color: AppColor.mainColor
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // tableRow(
            //   context,
            //   name: 'Henry Ndou',
            //   phoneNumber: '+263 71 256 4412',
            //   email: 'ndou.research@gmail.com'
            // ),
            // tableRow(
            //   context,
            //   name: 'Branimir Kalaica',
            //   phoneNumber: '+44 91 002 1445',
            //   email: 'kalaicabh@gmail.com'
            // ),
           ],
          ),
        ],
      ),
    );
  }

  TableRow tableRow(context,{name,phoneNumber,email}){
    return TableRow(
            decoration:  BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.blue,
                    width: 0.5,
                  ),
                ),
              ),
    );
  }

  Widget tableHeader(text){
  return Container(
    margin:  EdgeInsets.symmetric(vertical: 15),
    child: Text(text,
    style: TextStyle(
      fontWeight: FontWeight.bold,
      color: AppColor.mainColor,
    ),
    ),
  );
}
}

