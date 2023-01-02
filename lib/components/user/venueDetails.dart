import 'package:flutter/material.dart';
import 'package:untitled/backend/venueList.dart';
import 'package:untitled/theme.dart';

class venueDetails extends StatefulWidget {
  //const venueDetails({Key? key}) : super(key: key);

  int val = 0;
  venueDetails(this.val);

  @override
  State<venueDetails> createState() => _venueDetailsState();
}


class _venueDetailsState extends State<venueDetails> {
  @override

  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      textlockers = false;
      textcanteen = false;
      textchangingroom = false;
      textwashroom = false;
      textwifi = false;
    });
  }

  bool lockers = true;
  bool canteen = true;
  bool changingroom = true;
  bool washroom = true;
  bool wifi = true;
  bool textlockers = false;
  bool textcanteen = false;
  bool textchangingroom = false;
  bool textwashroom = false;
  bool textwifi = false;

  Widget build(BuildContext context) {
    var newVal = widget.val;
    double height = MediaQuery.of(context).size.width;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: mainColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(6, 6, 0, 0),
        child: CircleAvatar(
          radius: 20,
          child: FloatingActionButton(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        width: width,
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        child: ElevatedButton(onPressed: () {
          
        }, child: Text('Book Now'),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: width,
          child: Column(
            children: [
              Stack(
                children: [
                  Image.network(venueList[newVal].venueImage, fit: BoxFit.fill, height: 325,),
                  Positioned(child: Container(
                    height: 25,
                    width: width,
                    decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40.0),
                          bottomRight: Radius.circular(0),
                          topLeft: Radius.circular(40.0),
                          bottomLeft: Radius.circular(0)),
                    ),
                  ),
                  top: 306,
                  ),


                  Container(

                    margin: EdgeInsets.fromLTRB(20, 330, 20, 30),
                    child: Column(
                      children: [
                        Center(
                          child: Text(venueList[newVal].venueName, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(height: 35,),
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Icon(Icons.location_on, size: 20, color: Colors.blueAccent,),
                            SizedBox(width: 10,),
                            Text(venueList[newVal].venueLocation, style: TextStyle(fontSize: 15, color: textColor),),
                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Icon(Icons.price_change_rounded, size: 20, color: Colors.blueAccent,),
                            SizedBox(width: 10,),
                            Text('Rs. 1500 / hr', style: TextStyle(fontSize: 15, color: textColor),),
                          ],
                        ),
                        SizedBox(height: 30,),
                        Align(child: Text('Contact:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                          alignment: Alignment(-0.93, 0),
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Icon(Icons.phone, size: 20, color: Colors.blueAccent,),
                            SizedBox(width: 10,),
                            Text('8129659535', style: TextStyle(fontSize: 15, color: textColor),),
                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Icon(Icons.person_outline_rounded, size: 20, color: Colors.blueAccent,),
                            SizedBox(width: 10,),
                            Text('Shibil Basith CP', style: TextStyle(fontSize: 15, color: textColor),),
                          ],
                        ),
                        SizedBox(height: 30,),
                        Align(child: Text('Availability:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                          alignment: Alignment(-0.93, 0),
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Icon(Icons.calendar_month_rounded, size: 20, color: Colors.blueAccent,),
                            SizedBox(width: 10,),
                            Text('Monday to Sunday', style: TextStyle(fontSize: 15, color: textColor),),
                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Icon(Icons.access_time_filled_rounded, size: 20, color: Colors.blueAccent,),
                            SizedBox(width: 10,),
                            Text('04:00 - 23:00', style: TextStyle(fontSize: 15, color: textColor),),
                          ],
                        ),
                        SizedBox(height: 30,),
                        Align(child: Text('Facilities:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                          alignment: Alignment(-0.93, 0),
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Container(
                              height: 70,
                              width: width/6.6,
                              decoration: BoxDecoration(
                                color: backgroundColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: IconButton(onPressed: () {
                                setState(() {
                                  textwifi = !textwifi;
                                });
                              }, icon: textwifi?Text('WiFi', style: TextStyle(fontSize: 10),):Icon(Icons.wifi),

                              ),
                            ),
                            SizedBox(width: 13,),
                            Container(
                              height: 70,
                              width: width/6.6,
                              decoration: BoxDecoration(
                                color: backgroundColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: IconButton(onPressed: () {
                                setState(() {
                                  textwashroom = !textwashroom;
                                });
                              }, icon: textwashroom?Text('Wash\nRoom', style: TextStyle(fontSize: 10),):Icon(Icons.wash),

                              ),
                            ),
                            SizedBox(width: 13,),
                            Container(
                              height: 70,
                              width: width/6.6,
                              decoration: BoxDecoration(
                                color: backgroundColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: IconButton(onPressed: () {
                                setState(() {
                                  textchangingroom = !textchangingroom;
                                });
                              }, icon: textchangingroom?Text('Changing\n   Room', style: TextStyle(fontSize: 10),):Icon(Icons.checkroom_rounded),

                              ),
                            ),
                            SizedBox(width: 13,),
                            Container(
                              height: 70,
                              width: width/6.6,
                              decoration: BoxDecoration(
                                color: backgroundColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: IconButton(onPressed: () {
                                setState(() {
                                  textlockers = !textlockers;
                                });
                              }, icon: textlockers?Text('Locker', style: TextStyle(fontSize: 10),):Icon(Icons.room_preferences),

                              ),
                            ),
                            SizedBox(width: 13,),
                            Container(
                              height: 70,
                              width: width/6.6,
                              decoration: BoxDecoration(
                                color: backgroundColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: IconButton(onPressed: () {
                                setState(() {
                                  textcanteen = !textcanteen;
                                });
                              }, icon: textcanteen?Text('Canteen', style: TextStyle(fontSize: 10),):Icon(Icons.coffee_rounded),

                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),

                ],

              ),

            ],
          ),
        ),
      ),
    );
  }
}
