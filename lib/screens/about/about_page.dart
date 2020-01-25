import 'package:flutter/material.dart';
import 'package:gbs/screens/about/staffs_page.dart';
import 'package:gbs/screens/about/facilities_page.dart';

class AboutPage extends StatelessWidget {  
  @override

  Widget build(BuildContext context) {
     final controller = PageController(
    initialPage: 1,
  );

  final pageView = PageView(
    controller: controller,
    children: <Widget>[
    FacilitiesPage(),
      StaffsPage(),
    ],
  );
    return pageView;
  }
}