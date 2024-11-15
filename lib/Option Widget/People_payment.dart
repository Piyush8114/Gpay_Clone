import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gpay/Option_Work/Pay_UPI_ID.dart';

class People_Payment extends StatelessWidget {
  People_Payment({super.key, this.icons, this.title,this.Coloricon,this.OnTap,this.text});

  final IconData? icons;
  final String? title;
  final Color?  Coloricon;
  final String? text;
  final VoidCallback? OnTap;
  final isStyle = TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          InkWell(
            onTap: (){
              return OnTap!();
              // Navigator.push(context, MaterialPageRoute(builder: (context) =>Widget.onTap!(),));
            },
            child: Container(
              // color: Colors.white,
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(height: 2,),
                    CircleAvatar(
                      backgroundColor: Coloricon,
                      child: Text("$text",style: TextStyle(color: CupertinoColors.white),),),
                    SizedBox(height: 3,),
                    Text("${title}",textAlign: TextAlign.center,style: isStyle,)
                  ],
                ),
            ),
          )
        ],
      ),
    );
  }
}



class Icon_title extends StatelessWidget {

  Icon_title({super.key,this.title,this.OnTap,this.imagelocation,this.Coloricon,this.ICONS,this.bgColor});

  final String? title;
  final IconData? ICONS;
  final Color?  Coloricon;
  final Color?  bgColor;
  final String? imagelocation;
  final VoidCallback? OnTap;
  final isStyle = TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          InkWell(
            onTap: (){
              return OnTap!();
              // Navigator.push(context, MaterialPageRoute(builder: (context) =>Widget.onTap!(),));
            },
            child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(height: 2,),
                  CircleAvatar(
                    backgroundColor: bgColor,
                   backgroundImage: AssetImage("$imagelocation"),
                   child: Icon(ICONS,color: Coloricon,),),
                   SizedBox(height: 3,),
                  Text("${title}",textAlign: TextAlign.center,style: isStyle,)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

