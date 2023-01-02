import 'package:flutter/material.dart';
import 'package:untitled/theme.dart';
import 'package:untitled/backend/venueList.dart';

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

/*
else if (venueList[i].venueCategory == 'cricket'){
CricketCard.add(
Column(
children: [
Padding(padding: EdgeInsets.symmetric(vertical: 10)),
Card(
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(20)),
child: InkWell(
onTap: () {
setState(() {
print('stadium selected');
});
},
child: Container(
//padding: EdgeInsets.all(10),
child: Column(
children: [
Container(
child: ClipRRect(
borderRadius: BorderRadius.only(
topLeft: Radius.circular(20),
topRight: Radius.circular(20)),
child: Image(image: NetworkImage(
(venueList.length > 0) ? venueList[0]
    .venueImage : ''),)),
),

Container(
color: lightTheme
? Colors.transparent
    : mainColor,
padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
height: 80,
child: Column(
children: [
Row(
children: [
Text(
(venueList.length > 0)
? venueList[0]
    .venueName
    : '', style: TextStyle(
fontWeight: FontWeight.bold,
fontSize: 15,
color: textColor),),
],
),
Padding(padding: EdgeInsets.symmetric(
vertical: 3)),
Row(
children: [
Icon(Icons.location_on_outlined,
color: Colors.redAccent.shade200,
size: 15,),
Text(
(venueList.length > 0)
? venueList[0]
    .venueLocation
    : '',
style: TextStyle(
color: subColor,
fontSize: 15),),

],
),
],
),
),
]),
),
)
),
],
)
);
return CricketCard;
}
*/
