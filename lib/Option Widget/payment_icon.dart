import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class payment_icon extends StatelessWidget {
  payment_icon({super.key, this.icons, this.title,this.Coloricon,this.onTap});

  final IconData? icons;
  final String? title;
  final Color?  Coloricon;
  final VoidCallback? onTap;
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
            return onTap!();
            // Navigator.push(context, MaterialPageRoute(builder: (context) =>Widget.onTap!(),));
          },
          child: Container(
            // color: Colors.white,
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(height: 2,),
                  Icon(icons,color: Colors.indigo,size: 30,),
                  SizedBox(height: 3,),
                  Text("${title}",textAlign: TextAlign.center,style: isStyle,)
                ],
              )
          ),
        )

      ],
     ),
    );
  }
}
