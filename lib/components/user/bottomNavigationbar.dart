import 'package:flutter/material.dart';
import 'package:untitled/components/user/homepageUser.dart';
import 'package:untitled/components/user/settingsuser.dart';
import 'package:untitled/components/user/transactions.dart';
import 'package:untitled/theme.dart';


class bottomNavigationbar extends StatefulWidget {
  const bottomNavigationbar({Key? key}) : super(key: key);

  @override
  State<bottomNavigationbar> createState() => _bottomNavigationbarState();
}

class _bottomNavigationbarState extends State<bottomNavigationbar> {


  int _currentIndex = 0;

  final _pages = [
    homepageUser(),
    transactions(),
    settingsuser(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: Container(
        child: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_rounded, color: textColor,),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.money_rounded, color: textColor,),label: 'Transaction'),
          BottomNavigationBarItem(icon: Icon(Icons.settings, color: textColor,),label: 'Settings'),
        ],
        currentIndex: _currentIndex,
        onTap: (newIndex){
          setState(() {
            _currentIndex = newIndex;
          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
          backgroundColor: (lightTheme)?Colors.white:Colors.black,
        ),
      ),
    );
  }
}
