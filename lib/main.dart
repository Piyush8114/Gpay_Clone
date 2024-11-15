import 'package:flutter/material.dart';
import 'package:gpay/Screen/Choose_Account.dart';
import 'package:gpay/Screen/Splash_Screen.dart';
import 'package:gpay/Under%20Application/Home_Screen.dart';

import 'Under Application/Payment_history.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Gpay",
      debugShowCheckedModeBanner: false,
      home: Splash_Screen(),
      // home: Home_Screen()
    );
  }
}