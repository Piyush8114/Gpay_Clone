import 'package:flutter/material.dart';
import 'package:gpay/Option_Work/Pay_phoneNmber.dart';

class Pay_BankTransfer extends StatefulWidget {
   Pay_BankTransfer({super.key});

  @override
  State<Pay_BankTransfer> createState() => _Pay_BankTransferState();
}

class _Pay_BankTransferState extends State<Pay_BankTransfer> {
  var accountnumbercontroller =TextEditingController();

  var reaccountnumbercontroller =TextEditingController();

  var IFSCcontroller =TextEditingController();

  var Holdercontroller =TextEditingController();

  bool _EnabledButton = false;
  var Bgcolor = Colors.white70;

  String? _validateNumber(value) {
    if (value!.isEmpty) {
      return 'Please enter your account';
    }
    if (value.length != 15) {
      return 'Please enter a valid account';
    }
    return null;
  }


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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Enter recipient details",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
              SizedBox(height: 25,),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  child: TextFormField(
                    controller: accountnumbercontroller,
                    decoration: InputDecoration(
                       label: Text("Bank account number"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                    validator: _validateNumber,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  child: TextFormField(
                    onTap: (){
                      if(accountnumbercontroller.text != reaccountnumbercontroller.text)
                        {
                          Text("Your account not match");
                        }
                      else{

                      }
                    },
                    controller: reaccountnumbercontroller,
                    decoration: InputDecoration(
                        label: Text("Re-enter bank account number"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey),
                        )
                    ),
                    validator: _validateNumber,

                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  child: TextFormField(
                    controller: IFSCcontroller,
                    decoration: InputDecoration(
                        label: Text("IFSC code"),
                        suffixText:  "Search for IFSC",
                        suffixStyle: TextStyle(color: Colors.indigo),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey),
                        )
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  child: TextFormField(
                    controller: Holdercontroller,
                    decoration: InputDecoration(
                        label: Text("Bank account holder's name"),
                        suffixStyle: TextStyle(color: Colors.indigo),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey),
                        )
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10,),
              Center(
                child: Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Bgcolor),
                      onPressed: (){

                    if(accountnumbercontroller.text.length == 15 || reaccountnumbercontroller.text.length == 15)
                      {
                        setState(() {
                          Bgcolor = Colors.indigo;
                        });
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Enter both account successful"),duration: Duration(milliseconds: 1000),)
                        );
                      }
                    if(accountnumbercontroller.text != reaccountnumbercontroller.text)
                    {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Account not match"),duration: Duration(milliseconds: 1000),)
                      );
                    }
                    if(accountnumbercontroller.text.isEmpty || reaccountnumbercontroller.text.isEmpty || IFSCcontroller.text.isEmpty || Holdercontroller.text.isEmpty)
                    {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Enter all field required"),duration: Duration(milliseconds: 1000),)
                      );
                    }

                    else(
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Enter valid account"),duration: Duration(milliseconds: 1000),)
                    ),
                    );

                  },
                      child: Text("Confirm",style: TextStyle(color: Colors.white),)),
                ),
              ),

              SizedBox(height: 10,),

              Container(
                  width: double.infinity,
                  child: Text("This information will be securely saved as per \n Google Pay Terms of Service and Privacy Policy",textAlign: TextAlign.center,style: TextStyle(color: Colors.black54),)),

              SizedBox(height: 20,),

              Text("Recent bank transfers",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),

              SizedBox(height: 20,),

              ListTile(
                title: Text("Recent bank transfer will show up hare for your to easily repeat them",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                leading: CircleAvatar(
                  backgroundColor: Colors.blueGrey.shade100,
                  child: Icon(Icons.food_bank_outlined,color: Colors.indigo.shade50,),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
