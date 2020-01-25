import 'package:flutter/material.dart';
import 'package:gbs/data/welcome.dart';
import 'package:gbs/screens/home/home.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
                  SizedBox(height: 40,),
            Hero(
          tag: 'try',
          child: GestureDetector(
            onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HomePage();
                  }));
                },
                child: CircleAvatar(
                          backgroundImage: AssetImage('assets/principle.jpg'),
                          radius: 60,
                        ),
          ),
      ),
      SizedBox(height: 20,),
              Welcome()
            ],
          ),
        ),
      )
    );
    
    // Column(
    //   children: <Widget>[
    
    //   Welcome(),
    //   ],
       
    // )
  }
}