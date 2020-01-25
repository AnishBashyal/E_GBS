import 'package:flutter/material.dart';
import 'package:gbs/screens/about/about_page.dart';
import 'package:gbs/screens/about/facilities_page.dart';
import 'package:gbs/screens/startup/first_page.dart';


 void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      //theme: ThemeData.dark(),
     home: FacilitiesPage()
    );
}
}



