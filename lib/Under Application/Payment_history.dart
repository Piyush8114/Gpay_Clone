import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatSemple extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  PreferredSize(preferredSize: Size.fromHeight(65),
        child: AppBar(
        leading: Icon(Icons.arrow_back,color: Colors.black,),

          title: ListTile(
            // dense: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 0),
            minLeadingWidth: 20,
            title: Text("Anshu Vats"),
            subtitle: Text("6546546542"),
            leading: CircleAvatar(backgroundColor: Colors.greenAccent,
            child: Text("A"),
            ),
          ),
          actions: [
           Padding(
             padding: const EdgeInsets.only(right: 15),
             child: Row(
               children: [
                 Icon(Icons.emoji_people,color: Colors.black,size: 30,),
                 SizedBox(width: 20,),
                 Icon(Icons.call,color: Colors.black,size: 30,),
               ],
             ),
           ),

          ],
      ),),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(left: 15),
              child: Container(
                child: ClipPath(
                  clipper: UpperNipMessageClipperTwo(MessageType.send),
                  child: Expanded(
                    child: Card(
                      elevation: 2,
                      color: Colors.white70,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                      child: Container(
                        width: 180,
                        height: 120,
                        padding: EdgeInsets.only(top: 10,bottom: 10,left: 25,right: 10),
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 2,
                                  spreadRadius: 2
                              )
                            ]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Payment to you",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,height: 1.5),),
                            SizedBox(height: 10,),
                            Text("Rs 500",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20),),
                            Container(
                              height: 20,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: ListTile(
                                  visualDensity: VisualDensity(vertical: 0),
                                  contentPadding: EdgeInsets.only(top: 0),
                                  horizontalTitleGap: 2,
                                  title: Text("Paid. 20 oct 2023",style: TextStyle(fontWeight: FontWeight.w600,fontSize:7,)),
                                  leading: Icon(Icons.check_circle,color: Colors.greenAccent,size: 10,),
                                  trailing: Icon(Icons.arrow_forward_ios,size: 10,),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 10,),

            Padding(padding: EdgeInsets.only(right: 10),
              child: Container(
                alignment: Alignment.bottomRight,
                child: ClipPath(
                  clipper: UpperNipMessageClipperTwo(MessageType.send),
                  child: Expanded(
                    child: Card(
                      elevation: 2,
                      color: Colors.white70,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                      child: Container(
                        width: 180,
                        height: 120,
                        padding: EdgeInsets.only(top: 10,bottom: 10,left: 25,right: 10),
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 2,
                                  spreadRadius: 2
                              )
                            ]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Payment to you",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,height: 1.5),),
                            SizedBox(height: 10,),
                            Text("Rs 500",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20),),
                            Container(
                              height: 20,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: ListTile(
                                  visualDensity: VisualDensity(vertical: 0),
                                  contentPadding: EdgeInsets.only(top: 0),
                                  horizontalTitleGap: 2,
                                  title: Text("Paid. 20 oct 2023",style: TextStyle(fontWeight: FontWeight.w600,fontSize:7,)),
                                  leading: Icon(Icons.check_circle,color: Colors.greenAccent,size: 10,),
                                  trailing: Icon(Icons.arrow_forward_ios,size: 10,),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),

            Padding(padding: EdgeInsets.only(left: 15),
              child: Container(
                child: ClipPath(
                  clipper: UpperNipMessageClipperTwo(MessageType.send),
                  child: Expanded(
                    child: Card(
                      elevation: 2,
                      color: Colors.white70,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                      child: Container(
                        width: 180,
                        height: 120,
                        padding: EdgeInsets.only(top: 10,bottom: 10,left: 25,right: 10),
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 2,
                                  spreadRadius: 2
                              )
                            ]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Payment to piyush",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,height: 1.5),),
                            SizedBox(height: 10,),
                            Text("Rs 760",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20),),
                            Container(
                              height: 20,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: ListTile(
                                  visualDensity: VisualDensity(vertical: 0),
                                  contentPadding: EdgeInsets.only(top: 0),
                                  horizontalTitleGap: 2,
                                  title: Text("Paid. 20 oct 2023",style: TextStyle(fontWeight: FontWeight.w600,fontSize:7,)),
                                  leading: Icon(Icons.check_circle,color: Colors.greenAccent,size: 10,),
                                  trailing: Icon(Icons.arrow_forward_ios,size: 10,),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 10,),

            Padding(padding: EdgeInsets.only(right: 10),
              child: Container(
                alignment: Alignment.bottomRight,
                child: ClipPath(
                  clipper: UpperNipMessageClipperTwo(MessageType.send),
                  child: Expanded(
                    child: Card(
                      elevation: 2,
                      color: Colors.white70,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                      child: Container(
                        width: 180,
                        height: 120,
                        padding: EdgeInsets.only(top: 10,bottom: 10,left: 25,right: 10),
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 2,
                                  spreadRadius: 2
                              )
                            ]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Payment to you",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,height: 1.5),),
                            SizedBox(height: 10,),
                            Text("Rs 980",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20),),
                            Container(
                              height: 20,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: ListTile(
                                  visualDensity: VisualDensity(vertical: 0),
                                  contentPadding: EdgeInsets.only(top: 0),
                                  horizontalTitleGap: 2,
                                  title: Text("Paid. 20 oct 2023",style: TextStyle(fontWeight: FontWeight.w600,fontSize:7,)),
                                  leading: Icon(Icons.check_circle,color: Colors.greenAccent,size: 10,),
                                  trailing: Icon(Icons.arrow_forward_ios,size: 10,),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 10,),

            Padding(padding: EdgeInsets.only(left: 15),
              child: Container(
                child: ClipPath(
                  clipper: UpperNipMessageClipperTwo(MessageType.send),
                  child: Expanded(
                    child: Card(
                      elevation: 2,
                      color: Colors.white70,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                      child: Container(
                        width: 180,
                        height: 120,
                        padding: EdgeInsets.only(top: 10,bottom: 10,left: 25,right: 10),
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 2,
                                  spreadRadius: 2
                              )
                            ]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Payment to you",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,height: 1.5),),
                            SizedBox(height: 10,),
                            Text("Rs 500",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20),),
                            Container(
                              height: 20,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: ListTile(
                                  visualDensity: VisualDensity(vertical: 0),
                                  contentPadding: EdgeInsets.only(top: 0),
                                  horizontalTitleGap: 2,
                                  title: Text("Paid. 20 oct 2023",style: TextStyle(fontWeight: FontWeight.w600,fontSize:7,)),
                                  leading: Icon(Icons.check_circle,color: Colors.greenAccent,size: 10,),
                                  trailing: Icon(Icons.arrow_forward_ios,size: 10,),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 10,),

            Padding(padding: EdgeInsets.only(right: 10),
              child: Container(
                alignment: Alignment.bottomRight,
                child: ClipPath(
                  clipper: UpperNipMessageClipperTwo(MessageType.send),
                  child: Expanded(
                    child: Card(
                      elevation: 2,
                      color: Colors.white70,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                      child: Container(
                        width: 180,
                        height: 120,
                        padding: EdgeInsets.only(top: 10,bottom: 10,left: 25,right: 10),
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 2,
                                  spreadRadius: 2
                              )
                            ]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Payment to you",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,height: 1.5),),
                            SizedBox(height: 10,),
                            Text("Rs 500",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20),),
                            Container(
                              height: 20,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: ListTile(
                                  visualDensity: VisualDensity(vertical: 0),
                                  contentPadding: EdgeInsets.only(top: 0),
                                  horizontalTitleGap: 2,
                                  title: Text("Paid. 20 oct 2023",style: TextStyle(fontWeight: FontWeight.w600,fontSize:7,)),
                                  leading: Icon(Icons.check_circle,color: Colors.greenAccent,size: 10,),
                                  trailing: Icon(Icons.arrow_forward_ios,size: 10,),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),

            Padding(padding: EdgeInsets.only(left: 15),
              child: Container(
                child: ClipPath(
                  clipper: UpperNipMessageClipperTwo(MessageType.send),
                  child: Expanded(
                    child: Card(
                      elevation: 2,
                      color: Colors.white70,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                      child: Container(
                        width: 180,
                        height: 120,
                        padding: EdgeInsets.only(top: 10,bottom: 10,left: 25,right: 10),
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 2,
                                  spreadRadius: 2
                              )
                            ]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Payment to piyush",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,height: 1.5),),
                            SizedBox(height: 10,),
                            Text("Rs 760",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20),),
                            Container(
                              height: 20,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: ListTile(
                                  visualDensity: VisualDensity(vertical: 0),
                                  contentPadding: EdgeInsets.only(top: 0),
                                  horizontalTitleGap: 2,
                                  title: Text("Paid. 20 oct 2023",style: TextStyle(fontWeight: FontWeight.w600,fontSize:7,)),
                                  leading: Icon(Icons.check_circle,color: Colors.greenAccent,size: 10,),
                                  trailing: Icon(Icons.arrow_forward_ios,size: 10,),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 10,),

            Padding(padding: EdgeInsets.only(right: 10),
              child: Container(
                alignment: Alignment.bottomRight,
                child: ClipPath(
                  clipper: UpperNipMessageClipperTwo(MessageType.send),
                  child: Expanded(
                    child: Card(
                      elevation: 2,
                      color: Colors.white70,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                      child: Container(
                        width: 180,
                        height: 120,
                        padding: EdgeInsets.only(top: 10,bottom: 10,left: 25,right: 10),
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 2,
                                  spreadRadius: 2
                              )
                            ]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Payment to you",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,height: 1.5),),
                            SizedBox(height: 10,),
                            Text("Rs 980",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20),),
                            Container(
                              height: 20,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: ListTile(
                                  visualDensity: VisualDensity(vertical: 0),
                                  contentPadding: EdgeInsets.only(top: 0),
                                  horizontalTitleGap: 2,
                                  title: Text("Paid. 20 oct 2023",style: TextStyle(fontWeight: FontWeight.w600,fontSize:7,)),
                                  leading: Icon(Icons.check_circle,color: Colors.greenAccent,size: 10,),
                                  trailing: Icon(Icons.arrow_forward_ios,size: 10,),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 10,),

            Padding(padding: EdgeInsets.only(left: 15),
              child: Container(
                child: ClipPath(
                  clipper: UpperNipMessageClipperTwo(MessageType.send),
                  child: Expanded(
                    child: Card(
                      elevation: 2,
                      color: Colors.white70,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                      child: Container(
                        width: 180,
                        height: 120,
                        padding: EdgeInsets.only(top: 10,bottom: 10,left: 25,right: 10),
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 2,
                                  spreadRadius: 2
                              )
                            ]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Payment to you",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,height: 1.5),),
                            SizedBox(height: 10,),
                            Text("Rs 500",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20),),
                            Container(
                              height: 20,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: ListTile(
                                  visualDensity: VisualDensity(vertical: 0),
                                  contentPadding: EdgeInsets.only(top: 0),
                                  horizontalTitleGap: 2,
                                  title: Text("Paid. 20 oct 2023",style: TextStyle(fontWeight: FontWeight.w600,fontSize:7,)),
                                  leading: Icon(Icons.check_circle,color: Colors.greenAccent,size: 10,),
                                  trailing: Icon(Icons.arrow_forward_ios,size: 10,),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 10,),

            Padding(padding: EdgeInsets.only(right: 10),
              child: Container(
                alignment: Alignment.bottomRight,
                child: ClipPath(
                  clipper: UpperNipMessageClipperTwo(MessageType.send),
                  child: Expanded(
                    child: Card(
                      elevation: 2,
                      color: Colors.white70,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                      child: Container(
                        width: 180,
                        height: 120,
                        padding: EdgeInsets.only(top: 10,bottom: 10,left: 25,right: 10),
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 2,
                                  spreadRadius: 2
                              )
                            ]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Payment to you",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,height: 1.5),),
                            SizedBox(height: 10,),
                            Text("Rs 500",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20),),
                            Container(
                              height: 20,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: ListTile(
                                  visualDensity: VisualDensity(vertical: 0),
                                  contentPadding: EdgeInsets.only(top: 0),
                                  horizontalTitleGap: 2,
                                  title: Text("Paid. 20 oct 2023",style: TextStyle(fontWeight: FontWeight.w600,fontSize:7,)),
                                  leading: Icon(Icons.check_circle,color: Colors.greenAccent,size: 10,),
                                  trailing: Icon(Icons.arrow_forward_ios,size: 10,),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),

            Padding(padding: EdgeInsets.only(left: 15),
              child: Container(
                child: ClipPath(
                  clipper: UpperNipMessageClipperTwo(MessageType.send),
                  child: Expanded(
                    child: Card(
                      elevation: 2,
                      color: Colors.white70,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                      child: Container(
                        width: 180,
                        height: 120,
                        padding: EdgeInsets.only(top: 10,bottom: 10,left: 25,right: 10),
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 2,
                                  spreadRadius: 2
                              )
                            ]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Payment to piyush",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,height: 1.5),),
                            SizedBox(height: 10,),
                            Text("Rs 760",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20),),
                            Container(
                              height: 20,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: ListTile(
                                  visualDensity: VisualDensity(vertical: 0),
                                  contentPadding: EdgeInsets.only(top: 0),
                                  horizontalTitleGap: 2,
                                  title: Text("Paid. 20 oct 2023",style: TextStyle(fontWeight: FontWeight.w600,fontSize:7,)),
                                  leading: Icon(Icons.check_circle,color: Colors.greenAccent,size: 10,),
                                  trailing: Icon(Icons.arrow_forward_ios,size: 10,),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 10,),

            Padding(padding: EdgeInsets.only(right: 10),
              child: Container(
                alignment: Alignment.bottomRight,
                child: ClipPath(
                  clipper: UpperNipMessageClipperTwo(MessageType.send),
                  child: Expanded(
                    child: Card(
                      elevation: 2,
                      color: Colors.white70,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                      child: Container(
                        width: 180,
                        height: 120,
                        padding: EdgeInsets.only(top: 10,bottom: 10,left: 25,right: 10),
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 2,
                                  spreadRadius: 2
                              )
                            ]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Payment to you",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,height: 1.5),),
                            SizedBox(height: 10,),
                            Text("Rs 980",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20),),
                            Container(
                              height: 20,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: ListTile(
                                  visualDensity: VisualDensity(vertical: 0),
                                  contentPadding: EdgeInsets.only(top: 0),
                                  horizontalTitleGap: 2,
                                  title: Text("Paid. 20 oct 2023",style: TextStyle(fontWeight: FontWeight.w600,fontSize:7,)),
                                  leading: Icon(Icons.check_circle,color: Colors.greenAccent,size: 10,),
                                  trailing: Icon(Icons.arrow_forward_ios,size: 10,),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 10,),

            Padding(padding: EdgeInsets.only(left: 15),
              child: Container(
                child: ClipPath(
                  clipper: UpperNipMessageClipperTwo(MessageType.send),
                  child: Expanded(
                    child: Card(
                      elevation: 2,
                      color: Colors.white70,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                      child: Container(
                        width: 180,
                        height: 120,
                        padding: EdgeInsets.only(top: 10,bottom: 10,left: 25,right: 10),
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 2,
                                  spreadRadius: 2
                              )
                            ]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Payment to you",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,height: 1.5),),
                            SizedBox(height: 10,),
                            Text("Rs 500",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20),),
                            Container(
                              height: 20,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: ListTile(
                                  visualDensity: VisualDensity(vertical: 0),
                                  contentPadding: EdgeInsets.only(top: 0),
                                  horizontalTitleGap: 2,
                                  title: Text("Paid. 20 oct 2023",style: TextStyle(fontWeight: FontWeight.w600,fontSize:7,)),
                                  leading: Icon(Icons.check_circle,color: Colors.greenAccent,size: 10,),
                                  trailing: Icon(Icons.arrow_forward_ios,size: 10,),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 10,),

            Padding(padding: EdgeInsets.only(right: 10),
              child: Container(
                alignment: Alignment.bottomRight,
                child: ClipPath(
                  clipper: UpperNipMessageClipperTwo(MessageType.send),
                  child: Expanded(
                    child: Card(
                      elevation: 2,
                      color: Colors.white70,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                      child: Container(
                        width: 180,
                        height: 120,
                        padding: EdgeInsets.only(top: 10,bottom: 10,left: 25,right: 10),
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 2,
                                  spreadRadius: 2
                              )
                            ]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Payment to you",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,height: 1.5),),
                            SizedBox(height: 10,),
                            Text("Rs 500",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20),),
                            Container(
                              height: 20,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: ListTile(
                                  visualDensity: VisualDensity(vertical: 0),
                                  contentPadding: EdgeInsets.only(top: 0),
                                  horizontalTitleGap: 2,
                                  title: Text("Paid. 20 oct 2023",style: TextStyle(fontWeight: FontWeight.w600,fontSize:7,)),
                                  leading: Icon(Icons.check_circle,color: Colors.greenAccent,size: 10,),
                                  trailing: Icon(Icons.arrow_forward_ios,size: 10,),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),

            Padding(padding: EdgeInsets.only(left: 15),
              child: Container(
                child: ClipPath(
                  clipper: UpperNipMessageClipperTwo(MessageType.send),
                  child: Expanded(
                    child: Card(
                      elevation: 2,
                      color: Colors.white70,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                      child: Container(
                        width: 180,
                        height: 120,
                        padding: EdgeInsets.only(top: 10,bottom: 10,left: 25,right: 10),
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 2,
                                  spreadRadius: 2
                              )
                            ]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Payment to piyush",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,height: 1.5),),
                            SizedBox(height: 10,),
                            Text("Rs 760",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20),),
                            Container(
                              height: 20,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: ListTile(
                                  visualDensity: VisualDensity(vertical: 0),
                                  contentPadding: EdgeInsets.only(top: 0),
                                  horizontalTitleGap: 2,
                                  title: Text("Paid. 20 oct 2023",style: TextStyle(fontWeight: FontWeight.w600,fontSize:7,)),
                                  leading: Icon(Icons.check_circle,color: Colors.greenAccent,size: 10,),
                                  trailing: Icon(Icons.arrow_forward_ios,size: 10,),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 10,),

            Padding(padding: EdgeInsets.only(right: 10),
              child: Container(
                alignment: Alignment.bottomRight,
                child: ClipPath(
                  clipper: UpperNipMessageClipperTwo(MessageType.send),
                  child: Expanded(
                    child: Card(
                      elevation: 2,
                      color: Colors.white70,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                      child: Container(
                        width: 180,
                        height: 120,
                        padding: EdgeInsets.only(top: 10,bottom: 10,left: 25,right: 10),
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 2,
                                  spreadRadius: 2
                              )
                            ]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Payment to you",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,height: 1.5),),
                            SizedBox(height: 10,),
                            Text("Rs 980",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20),),
                            Container(
                              height: 20,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: ListTile(
                                  visualDensity: VisualDensity(vertical: 0),
                                  contentPadding: EdgeInsets.only(top: 0),
                                  horizontalTitleGap: 2,
                                  title: Text("Paid. 20 oct 2023",style: TextStyle(fontWeight: FontWeight.w600,fontSize:7,)),
                                  leading: Icon(Icons.check_circle,color: Colors.greenAccent,size: 10,),
                                  trailing: Icon(Icons.arrow_forward_ios,size: 10,),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 10,),
          ],
        ),
      ),
    );


  }
}