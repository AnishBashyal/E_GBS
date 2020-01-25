import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class SlideInTry extends StatefulWidget {
  @override
  _SlideInTryState createState() => _SlideInTryState();
}

class _SlideInTryState extends State<SlideInTry> with SingleTickerProviderStateMixin{
  Animation animation;
  AnimationController animationController;


  @override
  void initState(){
    super.initState();
    animationController  = AnimationController(duration: Duration(seconds: 2),vsync: this);
    animation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
      parent : animationController,
      curve : Curves.fastOutSlowIn,
    ));
  animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
   final double width = MediaQuery.of(context).size.width;
   return AnimatedBuilder(
     animation: animationController,
     builder: (BuildContext context ,Widget child){
       return Scaffold(
         appBar: AppBar(
           title: Text('hello'),
         ),
            body: Transform(
           transform: Matrix4.translationValues(animation.value * width, 0, 0),
           child :  new Center(
             child : Container(
               child: Text(
                 'Login',
                 style: TextStyle(
                   fontSize: 30
                  ),
                ),
             ), 
           ),
         ),
       );
     },
   );
  }
}