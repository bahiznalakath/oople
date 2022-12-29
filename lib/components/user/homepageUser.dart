import 'package:flutter/material.dart';
import 'package:untitled/components/user/searchoption.dart';
import 'package:untitled/theme.dart';


class homepageUser extends StatefulWidget {
  const homepageUser({Key? key}) : super(key: key);

  @override
  State<homepageUser> createState() => _homepageUserState();
}

class _homepageUserState extends State<homepageUser> {
  @override


  String sportSelected = 'football';







  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(3),
              child: Column(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              //mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Colors.white,
                                  backgroundImage: NetworkImage('https://e7.pngegg.com/pngimages/799/987/png-clipart-computer-icons-avatar-icon-design-avatar-heroes-computer-wallpaper-thumbnail.png',),
                                ),
                                SizedBox(width: 3, height: 10,),
                                Column(
                                  children: [
                                    Text('Welcome back,',style: TextStyle(color: subColor,fontWeight: FontWeight.w300),),
                                    //Padding(padding: EdgeInsets.symmetric(vertical: 0)),
                                    Text('sample User',style: TextStyle(color: textColor,fontWeight: FontWeight.bold),),
                                  ],
                                )
                              ],
                            ),
                            IconButton(onPressed: () {
                              setState(() {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>searchoption()));
                              });
                            }, icon: Icon(Icons.search_rounded,color: subColor,size: 30,))
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 2)),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Align(
                            alignment: Alignment(-0.8, 0),
                            child: Text('Choose your game!',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: subColor),)),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 3)),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,

                    child: Row(

                      children: [
                        SizedBox(width: 20,),
                        Container(
                          height: 120,
                          width: 120,
                          //color: Colors.white,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: sportSelected == 'football'?sportsbuttonColor:mainColor,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: IconButton(
                              onPressed: (){
                                    setState(() {
                                      sportSelected = 'football';
                                      print("$sportSelected selected");
                                    });


                              },
                              icon: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(child: Icon(Icons.sports_soccer_rounded,color: Colors.blue, size: 50,),
                                  radius: 30,
                                  backgroundColor: Colors.blue.withOpacity(0.3),
                                ),
                                Text('Football',style: TextStyle(color: subColor),),

                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          height: 120,
                          width: 120,
                          //color: Colors.white,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(

                            color: sportSelected == 'cricket'?sportsbuttonColor:mainColor,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: IconButton(
                            onPressed: (){
                              setState(() {
                                sportSelected = 'cricket';
                                print("$sportSelected selected");
                              });
                            },
                            icon: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(child: Icon(Icons.sports_cricket_rounded,color: Colors.blue, size: 50,),
                                  radius: 30,
                                  backgroundColor: Colors.blue.withOpacity(0.3),
                                ),
                                Text('Cricket',style: TextStyle(color: subColor),),

                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          height: 120,
                          width: 120,
                          //color: Colors.white,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: sportSelected == 'basketball'?sportsbuttonColor:mainColor,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: IconButton(
                            onPressed: (){
                              setState(() {
                                sportSelected = 'basketball';
                                print("$sportSelected selected");
                              });
                            },
                            icon: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(child: Icon(Icons.sports_basketball_rounded,color: Colors.blue, size: 50,),
                                  radius: 30,
                                  backgroundColor: Colors.blue.withOpacity(0.3),
                                ),
                                Text('Basketball',style: TextStyle(color: subColor),),

                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          height: 120,
                          width: 120,
                          //color: Colors.white,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: sportSelected == 'volleyball'?sportsbuttonColor:mainColor,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: IconButton(
                            onPressed: (){
                              setState(() {
                                sportSelected = 'volleyball';
                                print("$sportSelected selected");
                              });
                            },
                            icon: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(child: Icon(Icons.sports_volleyball_rounded,color: Colors.blue, size: 50,),
                                  radius: 30,
                                  backgroundColor: Colors.blue.withOpacity(0.3),
                                ),
                                Text('Volleyball',style: TextStyle(color: subColor),),

                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          height: 120,
                          width: 120,
                          //color: Colors.white,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: sportSelected == 'tennis'?sportsbuttonColor:mainColor,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: IconButton(
                            onPressed: (){
                              setState(() {
                                sportSelected = 'tennis';
                                print("$sportSelected selected");
                              });
                            },
                            icon: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(child: Icon(Icons.sports_tennis_rounded,color: Colors.blue, size: 50,),
                                  radius: 30,
                                  backgroundColor: Colors.blue.withOpacity(0.3),
                                ),
                                Text('Tennis',style: TextStyle(color: subColor),),

                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          height: 120,
                          width: 120,
                          //color: Colors.white,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: sportSelected == 'hockey'?sportsbuttonColor:mainColor,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: IconButton(
                            onPressed: (){
                              setState(() {
                                sportSelected = 'hockey';
                                print('$sportSelected selected');
                              });
                            },
                            icon: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(child: Icon(Icons.sports_hockey_rounded,color: Colors.blue, size: 50,),
                                  radius: 30,
                                  backgroundColor: Colors.blue.withOpacity(0.3),
                                ),
                                Text('Hockey',style: TextStyle(color: subColor),),

                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                ],
              ),
            ),



            if(sportSelected=='football') Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20) ),
                                      child: Image(image: NetworkImage('https://images.cnbctv18.com/wp-content/uploads/2022/11/Lusail-Stadium-Qatar-1-1019x573.jpg'),  )),
                                ),

                                    Container(
                                      color: lightTheme?Colors.transparent:mainColor,
                                      padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
                                      height: 80,
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Text('Lusail Stadium',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: textColor),),
                                            ],
                                          ),
                                          Padding(padding: EdgeInsets.symmetric(vertical: 3)),
                                          Row(
                                            children: [
                                              Icon(Icons.location_on_outlined,color: Colors.redAccent.shade200,size: 15,),
                                              Text('Doha, Qatar',style: TextStyle(color: subColor,fontSize: 15),),

                              ],
                            ),
                                        ],
                                      ),
                                    ),
                        ]),
                          ),
                      )
                      ),

                      Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                      Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
                                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20) ),
                                          child: Image(image: NetworkImage('https://images.cnbctv18.com/wp-content/uploads/2022/11/Lusail-Stadium-Qatar-1-1019x573.jpg'),  )),
                                    ),

                                    Container(
                                      color: lightTheme?Colors.transparent:mainColor,
                                      padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
                                      height: 80,
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Text('Lusail Stadium',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: textColor),),
                                            ],
                                          ),
                                          Padding(padding: EdgeInsets.symmetric(vertical: 3)),
                                          Row(
                                            children: [
                                              Icon(Icons.location_on_outlined,color: Colors.redAccent.shade200,size: 15,),
                                              Text('Doha, Qatar',style: TextStyle(color: subColor,fontSize: 15),),

                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ]),
                            ),
                          )
                      ),

                      Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                      Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
                                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20) ),
                                          child: Image(image: NetworkImage('https://images.cnbctv18.com/wp-content/uploads/2022/11/Lusail-Stadium-Qatar-1-1019x573.jpg'),  )),
                                    ),

                                    Container(
                                      color: lightTheme?Colors.transparent:mainColor,
                                      padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
                                      height: 80,
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Text('Lusail Stadium',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: textColor),),
                                            ],
                                          ),
                                          Padding(padding: EdgeInsets.symmetric(vertical: 3)),
                                          Row(
                                            children: [
                                              Icon(Icons.location_on_outlined,color: Colors.redAccent.shade200,size: 15,),
                                              Text('Doha, Qatar',style: TextStyle(color: subColor,fontSize: 15),),

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
                  ),
                ),
              ),
            ),

            if(sportSelected=='cricket') Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                      Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
                                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20) ),
                                          child: Image(image: NetworkImage('https://resources.pulse.icc-cricket.com/ICC/photo/2021/09/06/ef4fba29-e51b-4797-96b7-9f98e628ee34/GettyImages-137061267.jpg'),  )),
                                    ),

                                    Container(
                                      color: lightTheme?Colors.transparent:mainColor,
                                      padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
                                      height: 80,
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Text('Dubai international cricket stadium',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: textColor),),
                                            ],
                                          ),
                                          Padding(padding: EdgeInsets.symmetric(vertical: 3)),
                                          Row(
                                            children: [
                                              Icon(Icons.location_on_outlined,color: Colors.redAccent.shade200,size: 15,),
                                              Text('Dubai, UAE',style: TextStyle(color: subColor,fontSize: 15),),

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
                  ),
                ),
              ),
            ),



          ],
        ),),
    );
  }
}
