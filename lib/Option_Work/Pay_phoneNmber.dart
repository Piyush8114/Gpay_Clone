import 'package:flutter/material.dart';

class Pay_Number extends StatefulWidget {
  const Pay_Number({super.key});

  @override
  State<Pay_Number> createState() => _Pay_NumberState();
}

bool  _isButtonEnabled = false;
var numberController = TextEditingController();

class _Pay_NumberState extends State<Pay_Number> {
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
        child: Container(
          child: Padding(padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 25),
              Text(
                "Enter a phone number",
                style: TextStyle(fontSize: 27, color: Colors.black, fontWeight: FontWeight.w600, letterSpacing: 1),
              ),
              SizedBox(height: 5),
              Text(
                "Pay any UPI app using phone number",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black54),
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
              ),
            ],
          ),
          ),
        ),
      ),

    );
  }
}
