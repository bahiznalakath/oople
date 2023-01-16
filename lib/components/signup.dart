import 'package:flutter/material.dart';
import 'package:oopleproject/components/test.dart';
class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override

  bool userpage = true;
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(child: Container(
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
                Text(userpage?'Sign up to your account':'Register your business',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                    hintText: userpage?'Username':'Business name',
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                    hintText: userpage?'Your email':'Business email',
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                    hintText: userpage?'Phone':'Phone',
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                    hintText: userpage?'Password':'Password',
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                    hintText: userpage?'Confirm password':'Confirm password',
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 30)),
                ElevatedButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>test()));
                  }, child: Text('Sign up',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),))

                ],
              ),
          ),
          )),

    );
  }
}
