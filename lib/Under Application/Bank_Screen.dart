import 'package:flutter/material.dart';

class Bank_Details extends StatelessWidget {
  Bank_Details({super.key});

  var Iconlist = [
    'assets/icon/axis.png',
    'assets/icon/hdfc.png',
    'assets/icon/icico.png',
    'assets/icon/sbio.png',
    'assets/icon/pnb.png',
    'assets/icon/bob.png',
    'assets/icon/axis.png',
    'assets/icon/hdfc.png',
    'assets/icon/icico.png',
    'assets/icon/sbio.png',
    'assets/icon/pnb.png',
    'assets/icon/bob.png',
    'assets/icon/axis.png',
    'assets/icon/hdfc.png',
    'assets/icon/icico.png',
    'assets/icon/sbio.png',
    'assets/icon/pnb.png',
    'assets/icon/bob.png'
  ];

  var titlelist = [
    'Axis Bank',
    'HDFC Bank',
    'ICIC Bank',
    'State Bank of India',
    'Punjab National Bank',
    'Bank of Baroda',
    'Axis Bank',
    'HDFC Bank',
    'ICIC Bank',
    'State Bank of India',
    'Punjab National Bank',
    'Bank of Baroda',
    'Axis Bank',
    'HDFC Bank',
    'ICIC Bank',
    'State Bank of India',
    'Punjab National Bank',
    'Bank of Baroda',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(18.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all()),
              child: TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: "Search Banks",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    prefixIcon: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black54,
                      ),
                    ),
                    suffix: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: PopupMenuButton(
                        iconSize: 25,
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
                      ),
                    ),
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Select your bank",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 23,
                  letterSpacing: 1.3),
            ),
            SizedBox(
              height: 20,
            ),

         Column(
           children: [
             // Column(
             //   children: [
             //     for (int i = 'A'.codeUnitAt(0); i <= 'Z'.codeUnitAt(0); i++)
             //       Text("${String.fromCharCode(i)}")
             //   ],
             // ),

             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Container(
                   height: 70,
                   width: MediaQuery.of(context).size.width/2.3,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(16),
                     color: Colors.grey.shade200,
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       CircleAvatar(backgroundImage: AssetImage("assets/icon/hdfc.png",),),
                       SizedBox(width: 10,),
                       Text("HDFC Bank",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),)
                     ],
                   ),
                 ),

                 Container(
                   height: 70,
                   width: MediaQuery.of(context).size.width/2.3,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(16),
                     color: Colors.grey.shade200,
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       CircleAvatar(backgroundImage: AssetImage("assets/icon/axis.png",),),
                       SizedBox(width: 10,),
                       Text("Axis Bank",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),)
                     ],
                   ),
                 ),
               ],
             ),

             SizedBox(height: 15,),

             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Container(
                   height: 70,
                   width: MediaQuery.of(context).size.width/2.3,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(16),
                     color: Colors.grey.shade200,
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       CircleAvatar(backgroundImage: AssetImage("assets/icon/icico.png",),),
                       SizedBox(width: 10,),
                       Text("ICIC Bank",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),)
                     ],
                   ),
                 ),

                 Container(
                   height: 70,
                   width: MediaQuery.of(context).size.width/2.3,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(16),
                     color: Colors.grey.shade200,
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       CircleAvatar(backgroundImage: AssetImage("assets/icon/sbio.png",),),
                       SizedBox(width: 10,),
                       Text("State Bank\nof India",maxLines: 2,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),)
                     ],
                   ),
                 ),
               ],
             ),

             SizedBox(height: 15,),


             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Container(
                   height: 70,
                   width: MediaQuery.of(context).size.width/2.3,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(16),
                     color: Colors.grey.shade200,
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       CircleAvatar(backgroundImage: AssetImage("assets/icon/pnb.png",),),
                       SizedBox(width: 10,),
                       Text("Punjab\n National\n Bank",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),)
                     ],
                   ),
                 ),

                 Container(
                   height: 70,
                   width: MediaQuery.of(context).size.width/2.3,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(16),
                     color: Colors.grey.shade200,
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       CircleAvatar(backgroundImage: AssetImage("assets/icon/bob.png",),),
                       SizedBox(width: 10,),
                       Text("Bank of\nBaroda",maxLines: 2,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),)
                     ],
                   ),
                 ),
               ],
             ),

             SizedBox(height: 20,),
             ////////////////////////////////////////////////////////////////////////
        ]
         ),

            Container(
              child: Text(
                "All Bank",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,)
              ),
            ),

        SizedBox(height: 5,),

        Expanded(
          child: ListView.builder(
            itemCount: titlelist.length,
            itemExtent: 60,
            itemBuilder: (context, index) {
            return   ListTile(
              onTap: (){},
                              title: Text("${titlelist[index]}"),
                              leading: CircleAvatar(
                                  backgroundImage: AssetImage("${Iconlist[index]}"),
                              )
            );
          },),
        ),
          ],
        ),
      ),
    ));
  }
}
