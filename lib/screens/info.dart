import 'package:flutter/material.dart';
import 'package:gbs/screens/notices.dart';
import 'package:gbs/screens/try.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimationPage();
  }
}

class AnimationPage extends StatefulWidget {
  @override
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  bool opened = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ee'),
      ),
      body: Column(
        children: <Widget>[
          Hero(
            tag: 'try',
             child: GestureDetector(
          onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return NoticePage();
                }));
          },
            child: FlutterLogo(
              size: 200.0,
            ),
          ),
          ),
          Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: AnimatedSwitcher(
                    duration: Duration(milliseconds: 400),
                    transitionBuilder:
                        (Widget child, Animation<double> animation) {
                      return ScaleTransition(
                        child: child,
                        scale: animation,
                      );
                    },
                    child: opened
                        ? InkWell(
                            key: UniqueKey(),
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Container(
                                height: 80.0,
                                width: 80.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.blue,
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.home,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                opened = false;
                              });
                            },
                          )
                        : InkWell(
                            key: UniqueKey(),
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Container(
                                height: 80.0,
                                width: 80.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.red,
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.close,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                opened = true;
                              });
                            },
                          )),
              ),
            ],
          ),
           SizedBox(
                height: 100
                ),
              RaisedButton(
                child: Text('Go where'),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SlideInTry();
                }));
              }
            ),
        ],
      ),
    );
  }
}


