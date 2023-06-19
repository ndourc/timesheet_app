import 'package:flutter/material.dart';
import '../utilities/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;
  const ResponsiveLayout({Key? key,
  required this.webScreenLayout,
  required this.mobileScreenLayout
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        if(constraints.maxWidth < 500){
          return mobileScreenLayout;
        }
        return webScreenLayout;
      },
    );
  }
}
// my code