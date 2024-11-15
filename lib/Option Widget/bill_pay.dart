import 'package:flutter/material.dart';

class bill_pay extends StatelessWidget {
  bill_pay({super.key, this.iconData, this.title, this.iconcolour});

  final IconData? iconData;
  final String? title;
  final Colors? iconcolour;
  // final isstyle = TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

      },
      child: Card(
        elevation: 2,
        color: Colors.white.withOpacity(0.9),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Center(
              child: Column(
                children: [
                  Icon(iconData,color: Colors.indigo,size: 40,),
                  SizedBox(height: 5,),
                  Text("$title",textAlign: TextAlign.center,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
