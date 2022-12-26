import 'package:flutter/material.dart';

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
       body: SafeArea(child: Column(
         children: [
           Row(
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
           Text(userpage?'Sign up to your account':'Register your business',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
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

           }, child: Text('Log in',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),))

         ],
       )),
     );
   }
 }
