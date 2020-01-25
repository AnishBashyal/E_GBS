import 'package:flutter/material.dart';
import 'package:gbs/screens/info.dart';

class NoticePage extends StatefulWidget {
  @override
  _NoticePageState createState() => _NoticePageState();
}

class _NoticePageState extends State<NoticePage> {
  @override
  Widget build(BuildContext context) {

    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Text('Sliver App Bar'),
          floating: true,
          //pinned: true,
          expandedHeight: 250,
          backgroundColor: Colors.black,
          flexibleSpace: Hero(
        tag: 'try',
        child: GestureDetector(
          onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return InfoPage();
                }));
              },
          child: FlutterLogo(
            size: 200.0,
          ),
        ),
      ),
    ),
    SliverFixedExtentList(
      itemExtent: 200,
      delegate: SliverChildBuilderDelegate ((BuildContext context , int index){
      
        return Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
            alignment: Alignment.center,
            color: Colors.indigo[100*(index % 9)],
            child: Text('List Item : $index'),
          ),
        );
      },
      childCount: 10,
    ),
    ),
      ],
    );
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('Gandaki Boarding School'),
    //   ),
      // body: Hero(
      //   tag: 'try',
      //   child: GestureDetector(
      //     onTap: () {
      //           Navigator.push(context, MaterialPageRoute(builder: (context) {
      //             return InfoPage();
      //           }));
      //         },
      //     child: FlutterLogo(
      //       size: 100.0,
      //     ),
    //     ),
    //   ),
    // );
  }
}