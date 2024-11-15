import 'package:animated_hint_textfield/animated_hint_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gpay/Option%20Widget/bill_pay.dart';
import 'package:gpay/Option%20Widget/payment_icon.dart';

class Bill_Pay extends StatelessWidget {
  const Bill_Pay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading:true,
        title: AnimatedTextField(
          animationType: Animationtype.slide,
          decoration: InputDecoration(
            // prefixIcon: IconButton(onPressed: (){
            //   Navigator.pop(context);
            // }, icon: Icon(Icons.arrow_back)),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.red,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(25),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey.shade600,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(25),
            ),
            contentPadding: EdgeInsets.all(12),
          ),
          hintTexts: [
            'Search by nick name',
            'Search billers'
          ],
          hintTextStyle: TextStyle(color: Colors.black54),
        ),

        actions: [
          PopupMenuButton(
            iconSize: 35,
            iconColor: Colors.black87,
            color: Colors.white,
            elevation: 10,
            itemBuilder: (context) => [
              PopupMenuItem(child: Text("Get help",style: TextStyle(fontSize: 15,color: Colors.black54),)),

              PopupMenuItem(child: Text("Send feedback",style: TextStyle(fontSize: 15,color: Colors.black54),)),

            ],),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Your checklist(18)",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
                  TextButton(onPressed: (){}, child: Text("Add new"))
                ],
              ),
              SizedBox(height: 20,),
              Container(
                width: double.infinity,
                child: ListTile(
                  onTap: (){},
                  leading:CircleAvatar(
                    radius: 20,
                    child: Text("V",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.white70),),
                    backgroundColor: Colors.brown,
                  ),
                  title: Text("Vinod sir",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                  subtitle: Text("Mobile recharge\n+91 8298343431"),

                ),
              ),
              Container(
                width: double.infinity,
                child: ListTile(
                  onTap: (){},
                  leading:CircleAvatar(
                    radius: 20,
                    child: Text("A",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.white70),),
                    backgroundColor: Colors.indigoAccent.shade400,
                  ),
                  title: Text("Ambani",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                  subtitle: Text("Mobile recharge\n+91 9475874394"),

                ),
              ),
              Container(
                width: double.infinity,
                child: ListTile(
                  onTap: (){},
                  leading:CircleAvatar(
                    radius: 20,
                    child: Text("A",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.white70),),
                    backgroundColor: Colors.greenAccent,
                  ),
                  title: Text("Adani",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                  subtitle: Text("Mobile recharge\n+91 4809348404"),

                ),
              ),

              SizedBox(height: 20,),

              Container(
                width: double.infinity,
                  child: OutlinedButton(
                      onPressed: (){},
                      child: Text("View all"))),

              SizedBox(height: 25,),
              Text("Payment categories",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),

              SizedBox(height: 25,),

              Container(
                height: 350,
                child: Expanded(
                  child: Container(
                    height: 500,
                    child: GridView.count(
                        crossAxisCount: 3,
                      children: [
                        bill_pay(
                          title: "Mobile\nrecharge",
                          iconData: Icons.mobile_screen_share_outlined,
                        ),

                        bill_pay(
                          title: "Electricity",
                          iconData: Icons.electric_meter,
                        ),

                        bill_pay(
                          title: "DTH/\nCabel TV",
                          iconData: Icons.tv,
                        ),
                        bill_pay(
                          title: "FASTag\nrecharge",
                          iconData: Icons.car_crash_outlined,
                        ),
                        bill_pay(
                          title: "Google\nPlay",
                          iconData: Icons.play_arrow_outlined,
                        ),
                        bill_pay(
                          title: "Credit\ncards",
                          iconData: Icons.credit_card,
                        ),
                        bill_pay(
                          title: "Gas cylinder\nbooking",
                          iconData: Icons.local_gas_station_rounded,
                        ),
                        bill_pay(
                          title: "Brodband/\nLandline",
                          iconData: Icons.router,
                        ),
                        bill_pay(
                          title: "DTH/\nCabel TV",
                          iconData: Icons.mobile_screen_share_rounded,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // SizedBox(height: 20,),

              Container(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: (){

                      },
                      child: Text("View all"))),
              SizedBox(height: 30,)
            ],
          ),
        ),
      ),
    );
  }
}
