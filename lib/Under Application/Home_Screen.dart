import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:animated_hint_textfield/animated_hint_textfield.dart';
import 'package:gpay/Option%20Widget/People_payment.dart';
import 'package:gpay/Option%20Widget/payment_icon.dart';
import 'package:gpay/Option_Work/Bill_Pay.dart';
import 'package:gpay/Option_Work/Mobile_Recharge.dart';
import 'package:gpay/Option_Work/Pay_BankTransfer.dart';
import 'package:gpay/Option_Work/Pay_UPI_ID.dart';
import 'package:gpay/Option_Work/Pay_contect.dart';
import 'package:gpay/Option_Work/Pay_phoneNmber.dart';
import 'package:gpay/Option_Work/Scanner.dart';
import 'package:gpay/Option_Work/Self_Transfer.dart';
import 'package:gpay/Under%20Application/Bank_Screen.dart';
import 'package:gpay/Under%20Application/Payment_history.dart';
import 'package:lottie/lottie.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                  ),
                ),
                Positioned(
                    top: 80,
                    left: 160,
                    child: Lottie.network(
                        "https://lottie.host/e84db9fc-2ba2-4dba-a894-449fbc3b5225/xkpSM9AI1N.json",
                        height: 200)),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 8, right: 55),
                  child: AnimatedTextField(
                    animationType: Animationtype.slide,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
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
                      'Pay friends and merchants"',
                      'Pay by name or phone number',
                      'Pay by UPI',
                    ],
                    hintTextStyle: TextStyle(color: Colors.black54),
                  ),
                ),
                Positioned(
                  top: 15,
                  left: 310,
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            boxShadow: [
                              BoxShadow(color: Colors.black87, blurRadius: 1)
                            ],
                            image: DecorationImage(
                              image: AssetImage("assets/image/smart.jpg"),
                              fit: BoxFit.cover,
                            ),
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(40)),
                        child: Text("")),
                  ),
                ),
                Positioned(
                  top: 100,
                  left: 60,
                  child: Text(
                    "Start with your bank",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      height: 2,
                    ),
                  ),
                ),
                Positioned(
                  top: 140,
                  left: 37,
                  child: Text(
                    "Send and receive money securely",
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w600, height: 2),
                  ),
                ),
                Positioned(
                  top: 190,
                  left: 90,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.circular(20)),
                        fixedSize: Size.fromHeight(20),
                        elevation: 5,
                        shadowColor: Colors.grey,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Bank_Details(),
                            ));
                      },
                      child: Text(
                        "Activate bank account",
                      )),
                )
              ],
            ),
            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

            SizedBox(
              height: 30,
            ),
            Container(
              height: 200,
              // color: Colors.yellow,
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 500,
                    child: GridView.extent(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      maxCrossAxisExtent: 100,
                      crossAxisSpacing: 7,
                      mainAxisSpacing: 20,
                      children: [
                        payment_icon(
                          onTap:(){
                            // Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(),));
                          },
                          title: "Scan any QR code",
                          icons: Icons.document_scanner_outlined,
                        ),
                        payment_icon(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => PayContect(),));
                          },
                          title: "Pay\ncontects",
                          icons: Icons.phone,
                        ),
                        payment_icon(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Pay_Number(),));
                          },
                          title: "Pay phone number",
                          icons: Icons.send_to_mobile_rounded,
                        ),
                        payment_icon(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Pay_BankTransfer(),));
                          },
                          title: "Bank transfer",
                          icons: Icons.food_bank_rounded,
                        ),
                        payment_icon(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Pay_UPI_ID()));
                          },
                          title: "Pay UPI ID or number",
                          icons: Icons.usb,
                        ),
                        payment_icon(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Self_Transfer()));
                          },
                          title: "Self- transfer",
                          icons: Icons.person,
                        ),
                        payment_icon(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Bill_Pay(),));
                          },
                          title: "Pay\nbills",
                          icons: Icons.library_books_outlined,
                        ),
                        payment_icon(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Mobile_Recharge()));
                          },
                          title: "Mobile recharge",
                          icons: Icons.mobile_screen_share_sharp,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 5,
            ),

// --------------------------------------------------------------------

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                // color: Colors.yellow,
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: OutlinedButton.icon(
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: BorderSide(color: Colors.grey.shade50))),
                        icon: Icon(
                          Icons.add_circle,
                          size: 20,
                        ),
                        label: Text(
                          "Activate UPI Lite",
                          style: TextStyle(fontSize: 10, color: Colors.black54),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.grey.shade200,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(color: Colors.grey.shade200),
                            )),
                        child: Text(
                          "UPI ID : kumpiyush80...",
                          style: TextStyle(fontSize: 12, color: Colors.black54),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // -------------------------------------------------------------------
           SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                // color: Colors.yellow,
                width: double.infinity,
                child: Text(
                  "People",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w400),
                ),
              ),
            ),

            Container(
              height: 180,
              // color: Colors.pinkAccent,
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 500,
                    // color: Colors.deepPurple,
                    child: GridView.extent(
                      maxCrossAxisExtent: 110,
                      crossAxisSpacing: 0,
                      mainAxisSpacing: 0,
                      children: [

                        People_Payment(
                          Coloricon: Colors.orangeAccent,
                          text: "A",
                          title: "Anshu",
                          OnTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ChatSemple(),));
                          },
                        ),

                        People_Payment(
                          Coloricon: Colors.greenAccent,
                          text: "H",
                          title: "Harsh",
                          OnTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ChatSemple(),));
                          },
                        ),

                       Icon_title(
                          imagelocation: "assets/image/smart.jpg",
                          title: "Nikhil",
                         OnTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context) => ChatSemple(),));
                         },
                        ),
                        Icon_title(
                          imagelocation: "assets/member/gaurab.jpg",
                          title: "Gaurab",
                          OnTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ChatSemple(),));
                          },
                        ),
                        Icon_title(
                          imagelocation: "assets/member/vivek.jpg",
                          title: "Vivek",
                          OnTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ChatSemple(),));
                          },
                        ),
                        People_Payment(
                          Coloricon: Colors.orangeAccent,
                          title: "Ajit ku",
                          text: "A",
                          OnTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ChatSemple(),));
                          },
                        ),
                        Icon_title(
                          imagelocation: "assets/member/bigbro.jpg",
                          title: "Piyush",
                          OnTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ChatSemple(),));
                          },
                        ),
                        Icon_title(
                            Coloricon: Colors.blue,
                            title: "More",
                            bgColor: Colors.grey.shade300,
                            ICONS: Icons.keyboard_arrow_down_sharp
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                // color: Colors.yellow,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Businesses",
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                    ),

                    OutlinedButton.icon(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.lightBlueAccent.shade100,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
                        side: BorderSide.none
                        )
                      ),
                      icon: Icon(Icons.shopping_bag_outlined,color: Colors.black87,),
                        label: Text("Explore",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black87),),
                        onPressed: (){},
                        )
                  ],
                ),
              ),
            ),
            // SizedBox(height: 20,),

            Container(
              height: 90,
              // color: Colors.pinkAccent,
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    // height: 500,
                    // color: Colors.deepPurple,
                    child: GridView.extent(
                      maxCrossAxisExtent: 110,
                      crossAxisSpacing: 0,
                      mainAxisSpacing: 0,
                      children: [

                        Icon_title(
                          Coloricon: Colors.orangeAccent,
                          imagelocation: "assets/icon/Jio.jpg",
                          title: "Jio",
                        ),

                        Icon_title(
                          // Coloricon: Colors.greenAccent,
                          imagelocation: "assets/icon/vi.png",
                          title: "Vi",
                        ),

                        Icon_title(
                          imagelocation: "assets/icon/airtel.png",
                          title: "Airtel",
                        ),

                        Icon_title(
                          Coloricon: Colors.blue,
                          title: "More",
                          bgColor: Colors.grey.shade300,
                          ICONS: Icons.keyboard_arrow_down_sharp
                        )

                      ],
                    ),
                  ),
                ),
              ),
            ),

            // ---------------------------------------------------------------------
            // SizedBox(height: 20,),
            Container(
              // color: Colors.blueGrey,
              // margin: EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              child: ListTile(
                title: Text("Bills & recharges",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400),),
                subtitle: Text("No bills due. Try adding these!",style: TextStyle(fontSize: 14,height: 1.5),),
              ),
            ),

            Container(
              height: 95,
              // color: Colors.yellow,
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    // height: 500,
                    child: GridView.extent(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      maxCrossAxisExtent: 100,
                      crossAxisSpacing: 7,
                      mainAxisSpacing: 20,
                      children: [
                        Icon_title(
                          title: "DTH/Cable \nTV",
                          ICONS: Icons.tv,
                          bgColor: Colors.blueAccent.shade100,
                          Coloricon: Colors.black87,
                        ),
                        Icon_title(
                          title: "Electricity\n.",
                          ICONS: Icons.electric_meter_outlined,
                          bgColor: Colors.blueAccent.shade100,
                          Coloricon: Colors.black87,
                        ),
                        Icon_title(
                          title: "Postpaid\nmobile",
                          ICONS: Icons.mobile_screen_share,
                          bgColor: Colors.blueAccent.shade100,
                          Coloricon: Colors.black87,
                        ),
                        Icon_title(
                          title: "Broadband/\nLandline",
                          ICONS: Icons.router_outlined,
                          bgColor: Colors.blueAccent.shade100,
                          Coloricon: Colors.black87,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
              ),
                onPressed: (){}, child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("See all"),
                )),

            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                // color: Colors.yellow,
                width: double.infinity,
                child: Text(
                  "Offers and reward",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                ),
              ),
            ),

            Container(
              height: 95,
              // color: Colors.yellow,
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    // height: 500,
                    child: GridView.extent(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      maxCrossAxisExtent: 100,
                      crossAxisSpacing: 7,
                      mainAxisSpacing: 20,
                      children: [
                        Icon_title(
                          title: "Rewords",
                          bgColor: Colors.blueAccent.shade100,
                          imagelocation: "assets/icon/reword.png",
                        ),
                        Icon_title(
                          title: "Offers",
                          bgColor: Colors.blueAccent.shade100,
                          imagelocation: "assets/icon/offer.png",
                        ),
                        Icon_title(
                          title: "Referrals",
                          bgColor: Colors.blueAccent.shade100,
                          imagelocation: "assets/icon/refer.jpg",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                 Container(
                   width: double.infinity,
                   child: ListTile(
                     onTap: (){},
                     leading: Icon(Icons.cloud_done_rounded,color: Colors.blueAccent,size: 30,),
                     title: Text("Check your CIBIL score for free",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                     trailing: Icon(Icons.arrow_forward_ios,color: Colors.black54,size: 20,),
                   ),
                 ),
                  SizedBox(height: 5,),
                  Container(
                    width: double.infinity,
                    child: ListTile(
                      onTap: (){},
                      leading: Icon(Icons.av_timer_rounded,color: Colors.blueAccent,size: 30,),
                      title: Text("See transaction history",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                      trailing: Icon(Icons.arrow_forward_ios,color: Colors.black54,size: 20,),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    width: double.infinity,
                    child: ListTile(
                      onTap: (){},

                      leading: Icon(Icons.food_bank_outlined,color: Colors.blueAccent,size: 30,),
                      title: Text("Check bank balance",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                      trailing: Icon(Icons.arrow_forward_ios,color: Colors.black54,size: 20,),
                    ),
                  ),

                  SizedBox(height: 30,),

                  Container(
                    color: Colors.grey.shade200,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5,),
                          Text("Invite friends to get Rs 201",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                          SizedBox(height: 5,),
                          Text("Invite friends to Google Pay and get Rs 201 when your friend sends their first payment. Then get Rs21!",style: TextStyle(fontSize: 14,height: 1.3),),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
