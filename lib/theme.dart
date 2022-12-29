import 'package:flutter/material.dart';

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
  }
  else{
    backgroundColor = Colors.black;
    textColor = Colors.white;
    subColor = Colors.blue.shade50;
    mainColor = Colors.black87;
    sportsbuttonColor = Colors.teal.shade900;
  }
}