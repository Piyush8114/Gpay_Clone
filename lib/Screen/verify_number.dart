import 'dart:async';
// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:gpay/Screen/Choose_Account.dart';
import 'package:gpay/Screen/Chose_an_account.dart';
import 'package:gpay/Screen/Welcome_Screen.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Verify_Number extends StatelessWidget {
  Verify_Number( {super.key, required this.mobileNumber});

  final String mobileNumber;
  TextEditingController otpController = TextEditingController();

  GlobalKey<FormState> _key = GlobalKey<FormState>();

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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text("Verify your phone number",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 30,color: Colors.black,height: 1.5),),
                  ListTile(
                    title: Text(
                      "Verify your phone number",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 30,
                          color: Colors.black,
                          height: 1.3,
                          letterSpacing: 2),
                    ),
                    subtitle: Text(
                      "Enter the OTP sent to ${mobileNumber}",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.black54,
                          letterSpacing: 1,
                          height: 2),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 9,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: PinCodeTextField(
                      autoFocus: true,
                      appContext: context,
                      length: 5,
                      controller: otpController,
                      onChanged: (value) {
                        // Handle OTP changes
                      },
                    ),
                  ),

                  SizedBox(
                    height: 18,
                  ),

                  Center(
                      child: Text(
                        "Haveing trouble? Request a new OTP",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                      )),

              SizedBox(height: 50,),

              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (otpController.text.length == 5) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(duration: Duration(milliseconds: 100),
                          content: Text("Varify")));

                    if (otpController.text == '12345') {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("OTP is successfully submited")));
                      Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Account_Choose(),
                      ));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Incorrect OTP, Try again")));
                    }
                    }else{
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("Enter Valid OTP")));
                    }

                  },
                  child: Text("Verify"),
                ),
              )],
              ),
            ),
          ),
        ));
  }
}
