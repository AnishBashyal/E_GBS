import 'package:flutter/material.dart';
import 'package:gbs/data/teachers/english/english_teacher.dart';
import 'package:gbs/screens/about/staffs_page.dart';

class EnglishDepartmentPage extends StatefulWidget {
  @override
  _EnglishDepartmentPage createState() => _EnglishDepartmentPage();
}

class _EnglishDepartmentPage extends State<EnglishDepartmentPage> {
  @override
  Widget build(BuildContext context) {
return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          floating: false,
          //pinned: true,
          expandedHeight: 250,
          backgroundColor: Colors.indigo,
          flexibleSpace:Center(
              child: Card(
                color: Colors.indigo,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                        child: Column(
                      children: <Widget>[
                        Hero(
            tag: 'kss',
             child: Column(
               children: <Widget>[
                 SizedBox(height: 20,),
                 GestureDetector(
          onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return StaffsPage();
                      }));
          },
            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/teachers/english/kss.jpg'),
                              radius: 60,
                            ),
          ),
               ],
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
              ),
          ),
    ),
    SliverFixedExtentList(
      itemExtent: 220,
      delegate: SliverChildBuilderDelegate ((BuildContext context , int index){
        
      return Card(
        color: Colors.blue[800],
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.tealAccent,
                  backgroundImage: AssetImage((english_teacher_data[index]["img"])),
                ),
            ),
            ListTile(
              title: Text(english_teacher_data[index]["name"],
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
            ),
              subtitle: Text(english_teacher_data[index]["role"],
               style: TextStyle(
                color: Colors.black54,
                fontSize: 16
              ),
              ),
            ),
          ],
        ),
      );
      },
      childCount: english_teacher_data.length,
    ),
    ),
      ],
    );

  
        
  }
}

 