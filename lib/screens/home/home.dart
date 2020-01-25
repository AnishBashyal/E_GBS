import 'package:flutter/material.dart';
import 'package:gbs/animation.dart';
import 'package:gbs/screens/about/about_page.dart';
import 'package:gbs/screens/home/bigyan_page.dart';
import 'package:gbs/screens/home/sanjay_page.dart';
import 'package:gbs/screens/home/welcome_page.dart';
import 'package:gbs/screens/notices.dart';
import 'package:gbs/screens/startup/first_page.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                padding: EdgeInsets.all(0),
                child: Container(
                  color: Colors.black,
                  child: Center(
                    child: Text(
                      "'Knowledge Character Service'",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return FirstPage();
                  }));
                },
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Divider(
                      thickness: 1.5,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return AboutPage();
                  }));
                },
                leading: Icon(Icons.speaker_notes),
                title: Text("About"),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Divider(
                      thickness: 1.5,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return NoticePage();
                  }));
                },
                leading: Icon(Icons.notifications),
                title: Text("Notices"),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Divider(
                      thickness: 1.5,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return BasicAnimationView();
                  }));
                },
                leading: Icon(Icons.games),
                title: Text("Events"),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Divider(
                      thickness: 1.5,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              ListTile(
                onTap: () {
                  Navigator.pop(context);
                  print('hello');
                },
                leading: Icon(Icons.games),
                title: Text("Events"),
              ),
            ],
          ),
        ),
        // backgroundColor: Colors.black38,
        appBar: AppBar(
          title: Text('Gandaki Boarding School'),
         backgroundColor: Colors.blue[700],
          //backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.blue[600],
        body: Stack(
          children: <Widget>[
            //GradientPage(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  child: Column(
                    
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 30),
                       Hero(
            tag: 'principle',
             child: GestureDetector(
          onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return WelcomePage();
                }));
          },
            child: CircleAvatar(
                        backgroundImage: AssetImage('assets/principle.jpg'),
                        radius: 60,
                      ),
          ),
          ),
                      SizedBox(height: 20),
                      Text(
                        'Message From The Principle',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 40),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Divider(
                              thickness: 1.5,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 80),
                       Text(
                        "Student's Testimonial",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text('What our students say',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                        textAlign: TextAlign.center,),
                      SizedBox(height: 40),
                      Hero(
            tag: 'sanjay',
             child: GestureDetector(
          onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SanjayPage();
                }));
          },
            child: CircleAvatar(
                        backgroundImage: AssetImage('assets/sanjay.png'),
                        radius: 60,
                      ),
          ),
          ),
                      SizedBox(height: 20),
                      Text(
                        'Sanjay Bhandari',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                                             SizedBox(height: 40),

                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Divider(
                              thickness: 1.5,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                       SizedBox(height: 40),
                      Hero(
            tag: 'bigyan',
             child: GestureDetector(
          onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return BigyanPage();
                }));
          },
            child: CircleAvatar(
                        backgroundImage: AssetImage('assets/bigyan.png'),
                        radius: 60,
                      ),
          ),
          ),
                      
                      SizedBox(height: 20),
                      Text(
                        'Bigyan Babu Regimi',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                   
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
