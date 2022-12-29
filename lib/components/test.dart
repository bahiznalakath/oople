import 'package:flutter/material.dart';
import 'package:untitled/theme.dart';

class test extends StatefulWidget {
  const test({Key? key}) : super(key: key);

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: FloatingActionButton(onPressed: (){
        setState(() {
          lightTheme = !lightTheme;
          themeChange();
        });
      }),
    );
  }
}
