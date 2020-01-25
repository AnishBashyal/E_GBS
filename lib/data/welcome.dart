import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gbs/screens/home/home.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Firestore.instance.collection('brandnames').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return Text('Loading Data please');

          return Text(
            snapshot.data.documents[0]['name'],
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
            textAlign: TextAlign.justify,
          );
        });
    //Text(snapshot.data.documents[0]['votes']),
  }
}
