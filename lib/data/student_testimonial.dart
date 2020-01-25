import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class StudentsTestimonial extends StatefulWidget {
  @override
  _StudentsTestimonialState createState() => _StudentsTestimonialState();
}

class _StudentsTestimonialState extends State<StudentsTestimonial> {
  @override
  Widget build(BuildContext context) {
     return StreamBuilder(
        stream: Firestore.instance.collection('brandnames').snapshots(),
        builder: (context,snapshot){
          if(!snapshot.hasData) return Text('Loading Data please');
          return 
              Text(snapshot.data.documents[1]['name'],
               style: TextStyle(
                 fontSize: 16,
                 color: Colors.white,
               ),
               textAlign: TextAlign.justify,
          );
              //Text(snapshot.data.documents[0]['votes']),
        },
      );
  }
}