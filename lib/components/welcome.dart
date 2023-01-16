import 'package:flutter/material.dart';
import 'package:oopleproject/components/login.dart';
import 'package:oopleproject/components/signup.dart';

class welcome extends StatefulWidget {
  const welcome({Key? key}) : super(key: key);

  @override
  State<welcome> createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [BoxShadow(blurRadius: 3,color: Colors.black.withOpacity(0.6),spreadRadius: 6,)]
            ),
            child: Center(
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage('https://images.template.net/83824/free-soccer-ball-illustration-wiu8o.jpg'),
              ),
            ),

          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 20)),
          ElevatedButton(onPressed: () {

           // Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=>login()));
              Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
          }, child: Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
            child: Text('Log in'),
          )),
          Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          ElevatedButton(onPressed: () {


            Navigator.push(context, MaterialPageRoute(builder: (context)=>signup()));

          }, child: Text('Sign up'))
        ],
      ),
    );
  }
}

