import 'package:flutter/material.dart';
import 'package:gbs/data/facilities/facilities_data.dart';

class FacilitiesPage extends StatelessWidget {
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
      backgroundColor: Colors.blue[600],
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: Text('Facilities'),
      ),
     
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return Divider(
            thickness: 2.0,
          );
        },
        itemCount: facilities_data.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Stack(children: <Widget>[
              AnimatedSwitcher(
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
                          child: Card(
                            color: Colors.indigo,
                            child: ListTile(
                              title: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  facilities_data[index]["name"],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              subtitle: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  facilities_data[index]["description"],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
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
                          child: Card(
                            child: Image.asset(
                              (facilities_data[index]["img"]),
                              fit: BoxFit.cover,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            elevation: 5,
                            margin: EdgeInsets.all(10),
                          ),
                           onTap: () {
                                  setState(() {
                                    opened = true;
                                  });
                                },
                        )
                        )
            ]),
          );
        },
      ),
    );
  }
}
