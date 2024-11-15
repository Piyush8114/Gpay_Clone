import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gpay/Screen/Welcome_Screen.dart';
import 'package:splash_view/source/presentation/pages/splash_view.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),() =>
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WelcomeScreen(),))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // SizedBox(height:250,),
              Image(image:AssetImage("assets/image/gpay.png") ),

              SizedBox(height: 150,),

              Text("Google",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 40,color: Colors.grey.shade300,letterSpacing: 2),)
            ],
          ),
        ),
      )

    );
  }
}
