import 'package:flutter/material.dart';
import 'package:gpay/Screen/verify_number.dart';

class Account extends StatelessWidget {
   Account({super.key, required this.mobileNumber});

  var mobileNumber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
        icon: Icon(Icons.arrow_back,color: Colors.black,),
        ),
        actions: [
          PopupMenuButton(
            color: Colors.black,
            itemBuilder: (context) => [
            PopupMenuItem(child: Text("Get help",style: TextStyle(fontSize: 15,color: Colors.white),)),

            PopupMenuItem(child: Text("Send feedback",style: TextStyle(fontSize: 15,color: Colors.white),)),

          ],)
        ],
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Text("Choose an account",style: TextStyle(fontSize: 27,fontWeight: FontWeight.w700,letterSpacing: 2),),
                SizedBox(height: 12,),
                Text("This is how people on Google Pay will see you",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color : Colors.grey),),

                SizedBox(height: 25,),

                Container(
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 28,
                      foregroundImage: AssetImage("assets/image/smart.jpg"),
                      ),
                    title: Text("Piyush Kumar",style: TextStyle(fontWeight: FontWeight.w500),),
                    subtitleTextStyle: TextStyle(height: 1.5,color: Colors.black87),
                    subtitle: Text("piyush77687@gmail.com\n +91 ${mobileNumber}"),
                    trailing: Icon(Icons.keyboard_arrow_down_rounded,size: 30,),
                  ),
                ),

                SizedBox(height: 90,),

                Container(
                  // color: Colors.yellow,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                        text: ("In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate"),
                            style: TextStyle(color: Colors.black.withOpacity(0.7)),

                            children: [
                       TextSpan(
                         text: (" the visual form "),
                         style: TextStyle(color: Colors.blue)
                       ),

                       TextSpan(
                           text: (" of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is available. "),
                         style: TextStyle(color: Colors.black.withOpacity(0.7)),
                       ),

                              TextSpan(),

                      TextSpan(
                          text: ("In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate"),
                          style: TextStyle(color: Colors.black.withOpacity(0.7)),
                      ),

                              TextSpan(
                                  mouseCursor: MouseCursor.defer,
                                  text: (" Gpay form PhonePay "),
                                  style: TextStyle(color: Colors.blue)
                              ),

                              TextSpan(
                                text: (" of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is available. "),
                                style: TextStyle(color: Colors.black.withOpacity(0.7)),
                              ),

                              TextSpan(
                                text: (" of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is available. "),
                                style: TextStyle(color: Colors.black.withOpacity(0.7)),
                              ),
                          ]
                      ),
                      ),
                    ),
                  ),
                ),

                Container(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple,shape: RoundedRectangleBorder(borderRadius:BorderRadiusDirectional.circular(15)),elevation: 12),
                      onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Verify_Number(mobileNumber : mobileNumber),));
                      }, child: Text("Accept and continue",style: TextStyle(fontSize: 18,color: Colors.white),)),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
