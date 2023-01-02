import 'package:flutter/material.dart';


class transactions extends StatefulWidget {
  const transactions({Key? key}) : super(key: key);

  @override
  State<transactions> createState() => _transactionsState();
}

class _transactionsState extends State<transactions> {
  @override

  PageController _pageController = PageController();
  int currentIndex = 0;
  bool haveOrders = true;
  bool haveHistory = true;



  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          haveOrders = !haveOrders;
          haveHistory = !haveHistory;
        });
      },),
      backgroundColor: Colors.blue.shade50,
      body: Column(
        children:
        [
          SizedBox(height: 50,),
          Text('Transaction', style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: width/2,
                height: 50,
                decoration: BoxDecoration(
                  border: (currentIndex==0)?Border(bottom: BorderSide(color: Colors.blue,width: 2)):Border(bottom: BorderSide.none),
                ),
                child: TextButton(
                    onPressed: () {
                  setState(() {
                    _pageController.animateToPage(0, duration: Duration(milliseconds: 300), curve: Curves.linear);
                  });
                }, child: Text('Orders', style: TextStyle(
                  color: currentIndex==0?Colors.blue:Colors.black26,
                  fontSize: 15,
                ),)),
              ),
              Container(
                height: 50,
                width: width/2,
                decoration: BoxDecoration(
                  border: (currentIndex==1)?Border(bottom: BorderSide(color: Colors.blue,width: 2)):Border(bottom: BorderSide.none),
                ),
                child: TextButton(onPressed: () {
                  setState(() {
                    _pageController.animateToPage(1, duration: Duration(milliseconds: 300), curve: Curves.linear);
                  });
                }, child: Text('History', style: TextStyle(
                    color: currentIndex==1?Colors.blue:Colors.black26,
                  fontSize: 15,
                ))),
              ),
            ],
          ),
        Expanded(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index){
              setState(() {
                currentIndex = index;
              });
            },
            children: [
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Column(
                    children: [
                      if(haveOrders) Container(
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
                                            padding: EdgeInsets.fromLTRB(20, 15, 20, 0),
                                            height: 110,
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Text('Dubai international cricket stadium',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),),
                                                  ],
                                                ),
                                                Padding(padding: EdgeInsets.symmetric(vertical: 3)),
                                                Row(
                                                  children: [
                                                    Icon(Icons.location_on_outlined,color: Colors.redAccent.shade200,size: 15,),
                                                    Text('Dubai, UAE',style: TextStyle(color: Colors.black26,fontSize: 15),),

                                                  ],
                                                ),
                                                Padding(padding: EdgeInsets.symmetric(vertical: 3,)),
                                                Row(
                                                  children: [
                                                    Icon(Icons.attach_money_rounded, size: 15, color: Colors.lime.shade800),
                                                    Text('1500 Rs', style: TextStyle(fontSize: 15),),
                                                    SizedBox(width: width/2.6,),
                                                    Icon(Icons.calendar_month_rounded, size: 12),
                                                    Text('10-10-22', style: TextStyle(fontSize: 12),)
                                                  ],
                                                ),
                                                Padding(padding: EdgeInsets.symmetric(vertical: 1,)),
                                                Row(
                                                  children: [
                                                    SizedBox(width: width/1.726,),
                                                    Icon(Icons.access_time, size: 12),
                                                    Text('10 pm', style: TextStyle(fontSize: 12),)
                                                  ],
                                                ),
                                                Padding(padding: EdgeInsets.symmetric(vertical: 1,)),

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
                                                child: Image(image: NetworkImage('https://resources.pulse.icc-cricket.com/ICC/photo/2021/09/06/ef4fba29-e51b-4797-96b7-9f98e628ee34/GettyImages-137061267.jpg'),  )),
                                          ),

                                          Container(
                                            padding: EdgeInsets.fromLTRB(20, 15, 20, 0),
                                            height: 110,
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Text('Dubai international cricket stadium',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),),
                                                  ],
                                                ),
                                                Padding(padding: EdgeInsets.symmetric(vertical: 3)),
                                                Row(
                                                  children: [
                                                    Icon(Icons.location_on_outlined,color: Colors.redAccent.shade200,size: 15,),
                                                    Text('Dubai, UAE',style: TextStyle(color: Colors.black26,fontSize: 15),),

                                                  ],
                                                ),
                                                Padding(padding: EdgeInsets.symmetric(vertical: 3,)),
                                                Row(
                                                  children: [
                                                    Icon(Icons.attach_money_rounded, size: 15, color: Colors.lime.shade800),
                                                    Text('1500 Rs', style: TextStyle(fontSize: 15),),
                                                    SizedBox(width: width/2.6,),
                                                    Icon(Icons.calendar_month_rounded, size: 12),
                                                    Text('10-10-22', style: TextStyle(fontSize: 12),)
                                                  ],
                                                ),
                                                Padding(padding: EdgeInsets.symmetric(vertical: 1,)),
                                                Row(
                                                  children: [
                                                    SizedBox(width: width/1.726,),
                                                    Icon(Icons.access_time, size: 12),
                                                    Text('10 pm', style: TextStyle(fontSize: 12),)
                                                  ],
                                                ),
                                                Padding(padding: EdgeInsets.symmetric(vertical: 1,)),

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
                                                child: Image(image: NetworkImage('https://resources.pulse.icc-cricket.com/ICC/photo/2021/09/06/ef4fba29-e51b-4797-96b7-9f98e628ee34/GettyImages-137061267.jpg'),  )),
                                          ),

                                          Container(
                                            padding: EdgeInsets.fromLTRB(20, 15, 20, 0),
                                            height: 110,
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Text('Dubai international cricket stadium',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),),
                                                  ],
                                                ),
                                                Padding(padding: EdgeInsets.symmetric(vertical: 3)),
                                                Row(
                                                  children: [
                                                    Icon(Icons.location_on_outlined,color: Colors.redAccent.shade200,size: 15,),
                                                    Text('Dubai, UAE',style: TextStyle(color: Colors.black26,fontSize: 15),),

                                                  ],
                                                ),
                                                Padding(padding: EdgeInsets.symmetric(vertical: 3,)),
                                                Row(
                                                  children: [
                                                    Icon(Icons.attach_money_rounded, size: 15, color: Colors.lime.shade800),
                                                    Text('1500 Rs', style: TextStyle(fontSize: 15),),
                                                    SizedBox(width: width/2.6,),
                                                    Icon(Icons.calendar_month_rounded, size: 12),
                                                    Text('10-10-22', style: TextStyle(fontSize: 12),)
                                                  ],
                                                ),
                                                Padding(padding: EdgeInsets.symmetric(vertical: 1,)),
                                                Row(
                                                  children: [
                                                    SizedBox(width: width/1.726,),
                                                    Icon(Icons.access_time, size: 12),
                                                    Text('10 pm', style: TextStyle(fontSize: 12),)
                                                  ],
                                                ),
                                                Padding(padding: EdgeInsets.symmetric(vertical: 1,)),

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
                      if(!haveOrders)Container(
                        height: 676,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage('https://i.gifer.com/2oQ.gif'), fit: BoxFit.cover)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Text('No Orders', style: TextStyle(
                                backgroundColor: Colors.white,
                                fontSize: 20
                              ),),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Column(
                    children: [
                      if(haveHistory) Container(
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
                                            padding: EdgeInsets.fromLTRB(20, 15, 20, 0),
                                            height: 110,
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Text('Dubai international cricket stadium',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),),
                                                  ],
                                                ),
                                                Padding(padding: EdgeInsets.symmetric(vertical: 3)),
                                                Row(
                                                  children: [
                                                    Icon(Icons.location_on_outlined,color: Colors.redAccent.shade200,size: 15,),
                                                    Text('Dubai, UAE',style: TextStyle(color: Colors.black26,fontSize: 15),),

                                                  ],
                                                ),
                                                Padding(padding: EdgeInsets.symmetric(vertical: 3,)),
                                                Row(
                                                  children: [
                                                    Icon(Icons.attach_money_rounded, size: 15, color: Colors.lime.shade800),
                                                    Text('1500 Rs', style: TextStyle(fontSize: 15),),
                                                    SizedBox(width: width/2.6,),
                                                    Icon(Icons.calendar_month_rounded, size: 12),
                                                    Text('10-10-22', style: TextStyle(fontSize: 12),)
                                                  ],
                                                ),
                                                Padding(padding: EdgeInsets.symmetric(vertical: 1,)),
                                                Row(
                                                  children: [
                                                    SizedBox(width: width/1.726,),
                                                    Icon(Icons.access_time, size: 12),
                                                    Text('10 pm', style: TextStyle(fontSize: 12),)
                                                  ],
                                                ),
                                                Padding(padding: EdgeInsets.symmetric(vertical: 1,)),

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
                                                child: Image(image: NetworkImage('https://resources.pulse.icc-cricket.com/ICC/photo/2021/09/06/ef4fba29-e51b-4797-96b7-9f98e628ee34/GettyImages-137061267.jpg'),  )),
                                          ),

                                          Container(
                                            padding: EdgeInsets.fromLTRB(20, 15, 20, 0),
                                            height: 110,
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Text('Dubai international cricket stadium',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),),
                                                  ],
                                                ),
                                                Padding(padding: EdgeInsets.symmetric(vertical: 3)),
                                                Row(
                                                  children: [
                                                    Icon(Icons.location_on_outlined,color: Colors.redAccent.shade200,size: 15,),
                                                    Text('Dubai, UAE',style: TextStyle(color: Colors.black26,fontSize: 15),),

                                                  ],
                                                ),
                                                Padding(padding: EdgeInsets.symmetric(vertical: 3,)),
                                                Row(
                                                  children: [
                                                    Icon(Icons.attach_money_rounded, size: 15, color: Colors.lime.shade800),
                                                    Text('1500 Rs', style: TextStyle(fontSize: 15),),
                                                    SizedBox(width: width/2.6,),
                                                    Icon(Icons.calendar_month_rounded, size: 12),
                                                    Text('10-10-22', style: TextStyle(fontSize: 12),)
                                                  ],
                                                ),
                                                Padding(padding: EdgeInsets.symmetric(vertical: 1,)),
                                                Row(
                                                  children: [
                                                    SizedBox(width: width/1.726,),
                                                    Icon(Icons.access_time, size: 12),
                                                    Text('10 pm', style: TextStyle(fontSize: 12),)
                                                  ],
                                                ),
                                                Padding(padding: EdgeInsets.symmetric(vertical: 1,)),

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
                                                child: Image(image: NetworkImage('https://resources.pulse.icc-cricket.com/ICC/photo/2021/09/06/ef4fba29-e51b-4797-96b7-9f98e628ee34/GettyImages-137061267.jpg'),  )),
                                          ),

                                          Container(
                                            padding: EdgeInsets.fromLTRB(20, 15, 20, 0),
                                            height: 110,
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Text('Dubai international cricket stadium',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),),
                                                  ],
                                                ),
                                                Padding(padding: EdgeInsets.symmetric(vertical: 3)),
                                                Row(
                                                  children: [
                                                    Icon(Icons.location_on_outlined,color: Colors.redAccent.shade200,size: 15,),
                                                    Text('Dubai, UAE',style: TextStyle(color: Colors.black26,fontSize: 15),),

                                                  ],
                                                ),
                                                Padding(padding: EdgeInsets.symmetric(vertical: 3,)),
                                                Row(
                                                  children: [
                                                    Icon(Icons.attach_money_rounded, size: 15, color: Colors.lime.shade800),
                                                    Text('1500 Rs', style: TextStyle(fontSize: 15),),
                                                    SizedBox(width: width/2.6,),
                                                    Icon(Icons.calendar_month_rounded, size: 12),
                                                    Text('10-10-22', style: TextStyle(fontSize: 12),)
                                                  ],
                                                ),
                                                Padding(padding: EdgeInsets.symmetric(vertical: 1,)),
                                                Row(
                                                  children: [
                                                    SizedBox(width: width/1.726,),
                                                    Icon(Icons.access_time, size: 12),
                                                    Text('10 pm', style: TextStyle(fontSize: 12),)
                                                  ],
                                                ),
                                                Padding(padding: EdgeInsets.symmetric(vertical: 1,)),

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
                      if(!haveHistory)Container(
                        height: 676,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage('https://64.media.tumblr.com/2321767b60776e5cb244906bbe9ce7b2/tumblr_inline_msk4s3EnfY1qz4rgp.gif'), fit: BoxFit.cover)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Text('No History', style: TextStyle(
                                  backgroundColor: Colors.white,
                                  fontSize: 20
                              ),),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ])
    );
  }
}
