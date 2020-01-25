import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:gbs/screens/home/home.dart';
import 'package:gbs/shared/linear_gradient.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage>
    with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    animation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.fastOutSlowIn,
    ));
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget child) {
        return Scaffold(
          backgroundColor: Colors.red,
          body: Stack(children: <Widget>[
            GradientPage(),
            Transform(
              transform:
                  Matrix4.translationValues(animation.value * width, 0, 0),
              child: new Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return HomePage();
                        }));
                      },
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/gbs.jpg'),
                        radius: 50,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'School View',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.orangeAccent,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.yellow[500],
                      backgroundImage: AssetImage('assets/student.png'),
                      radius: 50,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Student View',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.orangeAccent,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        );
      },
    );
  }
}
