import 'package:flutter/material.dart';
import 'package:gbs/screens/about/departs/english_department_page.dart';
import 'package:gbs/screens/about/departs/nepali_department_page.dart';

class StaffsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: Text('Staffs'),
      ),
              backgroundColor: Colors.blue[600],
      body: Column(
        children: <Widget>[
          SizedBox(height: 20,),
          Center(
              child: Card(
                color: Colors.indigo,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      Hero(
            tag: 'kedar',
             child: GestureDetector(
          onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return NepaliDepartmentPage();
                }));
          },
            child: CircleAvatar(
                        backgroundImage: AssetImage('assets/teachers/nepali/kedar.jpg'),
                        radius: 60,
                      ),
          ),
        ),
        SizedBox(height: 20,),
                      Text(
                        'Kedar Prasad Dhakal',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Head of Nepali Department',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ),

          SizedBox(height: 20,),
          Center(
              child: Card(
                color: Colors.indigo,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      Hero(
            tag: 'kss',
             child: GestureDetector(
          onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return EnglishDepartmentPage();
                }));
          },
            child: CircleAvatar(
                        backgroundImage: AssetImage('assets/teachers/english/kss.jpg'),
                        radius: 60,
                      ),
          ),
        ),
        SizedBox(height: 20,),
                      Text(
                        'Krishna Shyam Sharma',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Head of English Department',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          )
        ],
      )
    );
  }
}