

import 'package:flutter/material.dart';
import 'package:gpay/Screen/Chose_an_account.dart';
import 'package:gpay/Under%20Application/Bank_Screen.dart';
import 'package:gpay/Under%20Application/Home_Screen.dart';

class Account_Choose extends StatelessWidget {
  const Account_Choose({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: [
          PopupMenuButton(
            color: Colors.black,
            itemBuilder: (context) => [
              PopupMenuItem(
                  child: Text(
                    "Get help",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  )),
              PopupMenuItem(
                  child: Text(
                    "Send feedback",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  )),
            ],
          )
        ],
      ),
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: Expanded(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Activate your bank account",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 25,height: 1.5),),
                SizedBox(height: 15,),
                Text("You need an active bank account to start sending and receiving money again",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,height: 1.4),),
                SizedBox(height: 25,),

                ListTile(
                  title: Text("ICIC Bank",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20,letterSpacing: 2,fontStyle: FontStyle.italic),),
                  subtitle: Text("Inactive",style: TextStyle(color: Colors.black54),),
                  leading: Container(
                    height: 50,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey)
                    ),
                    child: Image.asset("assets/image/icic.png",),
                  ),
                  horizontalTitleGap: 20,
                ),

                ListTile(
                  title: Text("State Bank Of India",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20,fontStyle: FontStyle.italic),),
                  subtitle: Text("Inactive",style: TextStyle(color: Colors.black54),),
                  leading: Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/image/sbi.png",),
                    ),
                  ),
                  horizontalTitleGap: 20,
                ),

                SizedBox(height: 320,),
                Positioned(
                    child: Container(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Bank_Details()));
                        },
                        child: Text("Not Now",style: TextStyle(color: Colors.deepPurple),),

                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
                            fixedSize: Size.fromHeight(40)
                        ),

                      ),
                    )),


                Positioned(
                    bottom: 20,
                    child: Container(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home_Screen(),));
                        },
                        child: Text("Activate My Account",style: TextStyle(fontSize: 17),),
                        style: ElevatedButton.styleFrom(
                          elevation: 5,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
                          fixedSize: Size.fromHeight(40)
                        ),
                      ),
                    )),

              ],
            ),
          ),
        ),
      ),
      ),
    );
  }
}
