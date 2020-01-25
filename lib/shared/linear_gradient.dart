import 'package:flutter/material.dart';

class GradientPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Container(
      // Add box decoration
      decoration: BoxDecoration(
        // Box decoration takes a gradient
        gradient: LinearGradient(
          // Where the linear gradient begins and ends
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          // Add one stop for each color. Stops should increase from 0 to 1
          stops: [0.001, 0.6,1],
          colors: [
            // Colors are easy thanks to Flutter's Colors class.
            Colors.black,
           Colors.indigoAccent,
           Colors.lightBlueAccent,
          ],
        ),
      ),
  );
  }
}