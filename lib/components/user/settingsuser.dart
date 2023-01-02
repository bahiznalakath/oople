import 'package:flutter/material.dart';
import 'package:untitled/theme.dart';


class settingsuser extends StatefulWidget {
  const settingsuser({Key? key}) : super(key: key);

  @override
  State<settingsuser> createState() => _settingsuserState();
}

class _settingsuserState extends State<settingsuser> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    //var light = true;
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: Tab(
        height: 120,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 40),
          child: Center(
            child: Text('Settings', style:  TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              children: [
                Align(child: Text('Account', style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.w500, fontSize: 15),),
                  alignment: Alignment(-0.9, 0),

                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 6)),
                InkWell(
                  onTap: () {

                  },
                  child: Row(
                    children: [
                      SizedBox(
                        width: 25,
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        backgroundImage: NetworkImage('https://e7.pngegg.com/pngimages/799/987/png-clipart-computer-icons-avatar-icon-design-avatar-heroes-computer-wallpaper-thumbnail.png',),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Text('Sample User', style: TextStyle(fontSize: 15, color: textColor, fontWeight: FontWeight.bold),),
                          Text('@sampleuser', style: TextStyle(fontSize: 12, color: subColor),),
                        ],
                      ),

                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                Align(child: Text('Payment', style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.w500, fontSize: 15),),
                alignment: Alignment(-0.9, 0),

                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 6)),
                InkWell(
                  onTap: () {

                  },
                  child: Row(
                    children: [
                      SizedBox(
                        width: 25,
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.payment_rounded, color: textColor, size: 30,),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Current Payment Method', style: TextStyle(fontSize: 15, color: textColor, fontWeight: FontWeight.bold),),
                          Text('  Not Set', style: TextStyle(fontSize: 12, color: subColor),),
                        ],
                      ),

                    ],
                  ),
                ),

                Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                Align(child: Text('Others', style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.w500, fontSize: 15),),
                  alignment: Alignment(-0.9, 0),

                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 6)),
                Row(
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    Row(
                      children: [ CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.sunny, color: textColor, size: 30,),
                      ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Theme', style: TextStyle(fontSize: 15, color: textColor, fontWeight: FontWeight.bold),),
                            Text(lightTheme?'  Light':'  Dark', style: TextStyle(fontSize: 12, color: subColor),),

                          ],
                        ),
                    ]),
                    SizedBox(width: width/2.8,),

                    Switch(value: lightTheme, onChanged: (value) {
                      setState(() {
                        lightTheme = value;
                        themeChange();
                      });

                    },)

                  ],
                ),


              ],
            ),
          )
        ],
      ),
    );
  }
}
