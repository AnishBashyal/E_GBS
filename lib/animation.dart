import 'package:flutter/material.dart';
import 'package:gbs/screens/info.dart';

class BasicAnimationView extends StatefulWidget {
  @override
  _BasicAnimationViewState createState() => _BasicAnimationViewState();
}

class _BasicAnimationViewState extends State<BasicAnimationView> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation growAnimation;

  @override
  void initState(){
    super.initState();
    controller = AnimationController(vsync: this, duration: const Duration(seconds: 3))
    ..addListener((){
      print('Grow Animation value ${growAnimation.value}');
      setState(() {
        
      });
    });
    growAnimation = Tween<double>(begin: 0, end: 200).animate(controller);
    controller.forward();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('fa'),
      ),
      body: Center(
        child: InkWell(
            child: Container(
            height: growAnimation.value,
            width: growAnimation.value,
            color: Colors.red,
          ),
           onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return InfoPage();
                }));
              },

      ),
      ),
    );
  }
}