import 'package:flutter/material.dart';
import 'package:gbs/data/teachers/nepali/nepali_teacher.dart';
import 'package:gbs/screens/about/staffs_page.dart';

class NepaliDepartmentPage extends StatefulWidget {
  @override
  _NepaliDepartmentPage createState() => _NepaliDepartmentPage();
}

class _NepaliDepartmentPage extends State<NepaliDepartmentPage> {
  @override
  Widget build(BuildContext context) {
return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          //title: Text('Nepali Department'),
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
            tag: 'kedar',
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
                              backgroundImage: AssetImage('assets/teachers/nepali/kedar.jpg'),
                              radius: 60,
                            ),
          ),
               ],
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
                  backgroundImage: AssetImage((nepali_teachers_data[index]["img"])),
                ),
            ),
            ListTile(
              title: Text(nepali_teachers_data[index]["name"],
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
            ),
              subtitle: Text(nepali_teachers_data[index]["role"],
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
      childCount: nepali_teachers_data.length,
    ),
    ),
      ],
    );

  
        
  }
}

 