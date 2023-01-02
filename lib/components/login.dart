import 'package:flutter/material.dart';
import 'package:oopleproject/components/user/bottomNavigationbar.dart';
import 'package:oopleproject/components/user/homepageUser.dart';

 class login extends StatefulWidget {
   const login({Key? key}) : super(key: key);

   @override
   State<login> createState() => _loginState();
 }

 class _loginState extends State<login> {
   @override


   bool userpage = true;
   Widget build(BuildContext context) {
     return Scaffold(
       body: SafeArea(child: Container(
         margin: EdgeInsets.all(30),
         child: Column(
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 TextButton(onPressed: () {
                   setState(() {
                     userpage = true;
                   });
                 }, child: Text('User')),
                 TextButton(onPressed: () {
                   setState(() {
                     userpage = false;
                   });
                 }, child: Text('Owner'))
               ],
             ),
             SizedBox(height: 30,),
             Text(userpage?'Log in to your account':'Log in to your business',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
             SizedBox(height: 20,),
             TextField(
               decoration: InputDecoration(
                 hintText: userpage?'Your email':'Business email',
               ),
             ),
             SizedBox(height: 10,),
             TextField(
               decoration: InputDecoration(
                 hintText: userpage?'Password':'Password',
               ),
             ),
             Padding(padding: EdgeInsets.symmetric(vertical: 30)),
             ElevatedButton(onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context)=>bottomNavigationbar()));

             }, child: Text('Log in',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),))

           ],
         ),
       )),
     );
   }
 }
