import 'package:flutter/material.dart';

class Pay_UPI_ID extends StatefulWidget {
  Pay_UPI_ID({super.key});

  @override
  State<Pay_UPI_ID> createState() => _Pay_NumberState();
}

bool  _isButtonEnabled = false;
var numberController = TextEditingController();
var bgcolour = Colors.white70;
var txtcolour = Colors.black;


class _Pay_NumberState extends State<Pay_UPI_ID> {
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
                  "Pay any UPI app using UPI ID or number",
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
                  // style: TextStyle(fontSize: 25, color: Colors.black, letterSpacing: 2),
                  decoration: InputDecoration(
                    hintText: "UPI ID or number",
                    // hintStyle: TextStyle(fontSize: 25),
                    focusColor: Colors.blue,
                    border: OutlineInputBorder(),
                  ),
                ),

                SizedBox(height: 450,),

                Center(
                  child: Container(
                    width: double.infinity,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: bgcolour,
                          elevation: 3,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(20)),
                        ),
                          onPressed: (){
                        if(numberController.text.isNotEmpty)
                          {
                            setState(() {
                              bgcolour =Colors.indigoAccent;
                              txtcolour = Colors.white;
                            });
                          }
                        else{
                          setState(() {

                            bgcolour = Colors.white70;
                            txtcolour = Colors.black54;
                          });
                        }
                      },
                          child: Text("Continue",style: TextStyle(color: txtcolour),))),
                )

              ],
            ),
          ),
        ),
      ),

    );
  }
}
