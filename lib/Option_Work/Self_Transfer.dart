import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gpay/Under%20Application/Bank_Screen.dart';

class Self_Transfer extends StatelessWidget {
  const Self_Transfer({super.key});

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

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            Text(
              "Self transfer",
              style: TextStyle(fontSize: 27, color: Colors.black, fontWeight: FontWeight.w600, letterSpacing: 1),
            ),
            SizedBox(height: 25),
            Text(
              "Manage your money better by adding another account to make self transfer",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black54),
            ),
            SizedBox(height: 30),

            ListTile(
              title: Text("State Bank Of India",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,fontStyle: FontStyle.italic),),
              subtitle: Text("****0133\nSavings account",style: TextStyle(color: Colors.black54),),
              leading: Container(
                height: 50,
                width: 80,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset("assets/image/sbi.png",),
                ),
              ),
              horizontalTitleGap: 20,
            ),

            SizedBox(height: 10,),
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Bank_Details(),));
              },
              title: Text("Add bank account",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Colors.blueAccent.shade100),),
              leading: Container(
                height: 40,
                width: 80,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueAccent.shade100)
                ),
                child: Icon(Icons.food_bank_outlined,size: 40,color: Colors.blueAccent.shade100,),
              ),
              horizontalTitleGap: 20,
            ),

            SizedBox(height: 200,),

            Container(
              height: MediaQuery.of(context).size.height/4.5,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                image: DecorationImage(
                  image: AssetImage("assets/image/pay.jpg"),
                  fit: BoxFit.cover,
                  opacity: 0.4,
                )
              ),
            )
          ],
        ),
        ),
      ),
    );
  }
}
