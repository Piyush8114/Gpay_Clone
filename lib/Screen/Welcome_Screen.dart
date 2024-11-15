import 'package:flutter/material.dart';
import 'package:gpay/Option%20Widget/language.dart';
import 'package:gpay/Screen/Chose_an_account.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  var numberController = TextEditingController();
  var mobileNumber;
  bool _isButtonEnabled = false;
  var bgColor = Colors.grey;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(_formKey.currentContext!).showSnackBar(
        SnackBar(content: Text('Number Submitted Successfully.')),
      );
    }
  }

  @override
  void dispose() {
    numberController.dispose();
    super.dispose(); // Call super.dispose() to properly dispose of resources.
  }

  String? _validateNumber(value) {
    if (value!.isEmpty) {
      return 'Please enter a phone number';
    }
    if (value.length != 10) {
      return 'Please enter a 10-digit phone number';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
            child: Container(
              width: 110,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(13),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Language()),
                  );
                },

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.language,
                      size: 25,
                      color: Colors.deepPurpleAccent,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "English",
                      style: TextStyle(color: Colors.black87, fontSize: 15),
                    ),
                    Icon(Icons.arrow_drop_down, color: Colors.deepPurpleAccent, size: 25)
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Container(
              width: 75,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(13),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.outlined_flag, size: 25, color: Colors.deepPurple),
                  SizedBox(width: 5),
                  Text(
                    "IN",
                    style: TextStyle(color: Colors.black87, fontSize: 15),
                  ),
                  Icon(Icons.arrow_drop_down, color: Colors.deepPurple, size: 25)
                ],
              ),
            ),
          ),
          PopupMenuButton(
            color: Colors.black,
            iconSize: 30,
            onSelected: (selected) {
              // Handle selected item
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                child: Text(
                  "Get help",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white),
                ),
              ),
              PopupMenuItem(
                value: 2,
                child: Text(
                  "Send feedback",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Form(
          key: _formKey,
          child: Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 50),
                  Image(image: AssetImage("assets/image/logo.png"), height: 50, width: 80),
                  SizedBox(height: 25),
                  Text(
                    "Welcome to Google Pay",
                    style: TextStyle(fontSize: 27, color: Colors.black, fontWeight: FontWeight.w600, letterSpacing: 1),
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Enter your phone number",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black54),
                  ),
                  SizedBox(height: 35),
                  TextFormField(
                    autofocus: true,
                    controller: numberController,
                    onChanged: (text) {
                      setState(() {
                        _isButtonEnabled = text.isNotEmpty;
                      });
                    },
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 25, color: Colors.black, letterSpacing: 3),
                    decoration: InputDecoration(
                      prefixText: "+91 ",
                      prefixStyle: TextStyle(color: Colors.black87, fontSize: 25),
                      prefixIcon: Icon(Icons.flag, size: 35, color: Colors.orangeAccent),
                      hintText: "00000 00000",
                      hintStyle: TextStyle(fontSize: 25),
                      focusColor: Colors.blue,
                      border: OutlineInputBorder(),
                    ),
                    validator: _validateNumber,
                  ),
                  SizedBox(height: 350),
                  Center(
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(double.infinity, 30),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          backgroundColor: bgColor,
                        ),

                        onPressed: () {
                          if(numberController.text.length == 10){
                            setState(() {
                              bgColor = Colors.lightBlue;
                            });

                            Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                        return Account(
                                            mobileNumber: numberController.text);
                                      },
                                      ));

                          }
                          else{
                            setState(() {
                              bgColor = Colors.grey;
                            });
                            }
                          },

                        child: Text("Continue", style: TextStyle(fontSize: 20)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
