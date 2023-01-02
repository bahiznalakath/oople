import 'dart:async';

import 'package:flutter/material.dart';
import 'package:oopleproject/components/welcome.dart';


class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override


  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () {
      //Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=>welcome()));
      Navigator.push(context, MaterialPageRoute(builder: (context)=>welcome()));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [BoxShadow(blurRadius: 3,color: Colors.black.withOpacity(0.6),spreadRadius: 6,)]
              ),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage('https://images.template.net/83824/free-soccer-ball-illustration-wiu8o.jpg'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
