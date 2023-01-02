import 'package:flutter/material.dart';
import 'package:untitled/components/user/bottomNavigationbar.dart';
import 'package:untitled/components/user/homepageUser.dart';
import 'package:untitled/components/user/settingsuser.dart';
import 'package:untitled/components/user/transactions.dart';
import 'package:untitled/components/user/venueDetails.dart';

//double width = MediaQuery.of(context).size.width;

Color backgroundColor = Colors.blue.shade50;
Color textColor = Colors.black54;
Color subColor = Colors.black26;
Color mainColor = Colors.white;
Color sportsbuttonColor = Colors.greenAccent.shade100;

bool lightTheme = true;

void themeChange(){
  if(lightTheme){
    backgroundColor = Colors.blue.shade50;
    textColor = Colors.black54;
    subColor = Colors.black26;
    mainColor = Colors.white;
    sportsbuttonColor = Colors.greenAccent.shade100;
    /*bottomNavigationbar();
    homepageUser();
    settingsuser();
    transactions();*/

  }
  else{
    backgroundColor = Colors.black;
    textColor = Colors.white;
    subColor = Colors.blue.shade50;
    mainColor = Colors.black;
    sportsbuttonColor = Colors.teal.shade900;
    /*bottomNavigationbar();
    homepageUser();
    settingsuser();
    transactions();*/
  }
}