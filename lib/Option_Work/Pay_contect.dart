import 'package:animated_hint_textfield/animated_hint_textfield.dart';
import 'package:flutter/material.dart';

class PayContect extends StatelessWidget {
  const PayContect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        automaticallyImplyLeading: false,
        title: AnimatedTextField(
          animationType: Animationtype.typer,
          decoration: InputDecoration(
            prefixIcon: IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back)),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.red,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(25),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey.shade600,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(25),
            ),
            contentPadding: EdgeInsets.all(12),
          ),
          hintTexts: [
            'Pay by name or phone number',
          ],
          hintTextStyle: TextStyle(color: Colors.black54),
        ),

        actions: [
          PopupMenuButton(
            iconSize: 35,
            iconColor: Colors.black87,
            color: Colors.white,
            elevation: 10,
            itemBuilder: (context) => [
              PopupMenuItem(child: Text("Get help",style: TextStyle(fontSize: 15,color: Colors.black54),)),

              PopupMenuItem(child: Text("Send feedback",style: TextStyle(fontSize: 15,color: Colors.black54),)),

            ],),
        ],
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text("All people on UPI",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 22,color: Colors.black87),),
            ),
            SizedBox(height: 15,),

            Container(
              width: double.infinity,
              child: ListTile(
                onTap: (){},
                leading:CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.deepPurpleAccent,
                  child: Icon(Icons.group,color: Colors.white,),
                ),
                title: Text("New group",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                subtitle: Text("Start group chat or split an expense"),
              ),
            ),
            Container(
              width: double.infinity,
              child: ListTile(
                onTap: (){},
                leading:CircleAvatar(
                  radius: 20,
                  // backgroundColor: bgcolor,
                  backgroundImage: AssetImage("assets/member/anshu.jpg"),
                ),
                title: Text("Anshu Vats",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                subtitle: Text("8298822061"),
              ),
            ),
            Container(
              width: double.infinity,
              child: ListTile(
                onTap: (){},
                leading:CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.cyan,
                  child: Text("A"),
                ),
                title: Text("Ajeet Kumar",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                subtitle: Text("765652234"),
              ),
            ),
            Container(
              width: double.infinity,
              child: ListTile(
                onTap: (){},
                leading:CircleAvatar(
                  radius: 20,
                  // backgroundColor: bgcolor,
                  backgroundImage: AssetImage("assets/member/bigbro.jpg"),
                ),
                title: Text("Priyanshu Roy",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                subtitle: Text("9608294286"),
              ),
            ),
            Container(
              width: double.infinity,
              child: ListTile(
                onTap: (){},
                leading:CircleAvatar(
                  radius: 20,
                  // backgroundColor: bgcolor,
                  backgroundImage: AssetImage("assets/member/gaurab.jpg"),
                ),
                title: Text("Gaurab Kumar",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                subtitle: Text("6767887684"),
              ),
            ),
            Container(
              width: double.infinity,
              child: ListTile(
                onTap: (){},
                leading:CircleAvatar(
                  radius: 20,
                  // backgroundColor: bgcolor,
                  backgroundImage: AssetImage("assets/member/mypic1.jpg"),
                ),
                title: Text("Piyush Roy",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                subtitle: Text("8051370133"),
              ),
            ),
            Container(
              width: double.infinity,
              child: ListTile(
                onTap: (){},
                leading:CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.indigoAccent,
                  child: Text("G"),
                ),
                title: Text("Gulshan Kumar",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                subtitle: Text("765652234"),
              ),
            ),
            Container(
              width: double.infinity,
              child: ListTile(
                onTap: (){},
                leading:CircleAvatar(
                  radius: 20,
                  // backgroundColor: bgcolor,
                  backgroundImage: AssetImage("assets/member/vivek.jpg"),
                ),
                title: Text("Vivek Gaber",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                subtitle: Text("8767686777"),
              ),
            ),
            Container(
              width: double.infinity,
              child: ListTile(
                onTap: (){},
                leading:CircleAvatar(
                  radius: 20,
                  // backgroundColor: bgcolor,
                  backgroundImage: AssetImage("assets/member/group.jpg"),
                ),
                title: Text("Android developer team",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                subtitle: Text("9165765678"),
              ),
            ),
            Container(
              width: double.infinity,
              child: ListTile(
                onTap: (){},
                leading:CircleAvatar(
                  radius: 20,
                  // backgroundColor: bgcolor,
                  backgroundImage: AssetImage("assets/member/mypic2.jpg"),
                ),
                title: Text("Developer Baba",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                subtitle: Text("8051370133"),
              ),
            ),
            Container(
              width: double.infinity,
              child: ListTile(
                onTap: (){},
                leading:CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.cyan,
                  child: Text("M"),
                ),
                title: Text("Manjesh sir",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                subtitle: Text("6768908802"),
              ),
            ),
            Container(
              width: double.infinity,
              child: ListTile(
                onTap: (){},
                leading:CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.deepPurpleAccent,
                  child: Icon(Icons.group,color: Colors.white,),
                ),
                title: Text("New group",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                subtitle: Text("Start group chat or split an expense"),
              ),
            ),
            Container(
              width: double.infinity,
              child: ListTile(
                onTap: (){},
                leading:CircleAvatar(
                  radius: 20,
                  // backgroundColor: bgcolor,
                  backgroundImage: AssetImage("assets/member/anshu.jpg"),
                ),
                title: Text("Anshu Vats",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                subtitle: Text("8298822061"),
              ),
            ),
            Container(
              width: double.infinity,
              child: ListTile(
                onTap: (){},
                leading:CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.cyan,
                  child: Text("A"),
                ),
                title: Text("Ajeet Kumar",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                subtitle: Text("765652234"),
              ),
            ),
            Container(
              width: double.infinity,
              child: ListTile(
                onTap: (){},
                leading:CircleAvatar(
                  radius: 20,
                  // backgroundColor: bgcolor,
                  backgroundImage: AssetImage("assets/member/bigbro.jpg"),
                ),
                title: Text("Priyanshu Roy",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                subtitle: Text("9608294286"),
              ),
            ),
            Container(
              width: double.infinity,
              child: ListTile(
                onTap: (){},
                leading:CircleAvatar(
                  radius: 20,
                  // backgroundColor: bgcolor,
                  backgroundImage: AssetImage("assets/member/gaurab.jpg"),
                ),
                title: Text("Gaurab Kumar",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                subtitle: Text("6767887684"),
              ),
            ),
            Container(
              width: double.infinity,
              child: ListTile(
                onTap: (){},
                leading:CircleAvatar(
                  radius: 20,
                  // backgroundColor: bgcolor,
                  backgroundImage: AssetImage("assets/member/mypic1.jpg"),
                ),
                title: Text("Piyush Roy",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                subtitle: Text("8051370133"),
              ),
            ),
            Container(
              width: double.infinity,
              child: ListTile(
                onTap: (){},
                leading:CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.indigoAccent,
                  child: Text("G"),
                ),
                title: Text("Gulshan Kumar",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                subtitle: Text("765652234"),
              ),
            ),
            Container(
              width: double.infinity,
              child: ListTile(
                onTap: (){},
                leading:CircleAvatar(
                  radius: 20,
                  // backgroundColor: bgcolor,
                  backgroundImage: AssetImage("assets/member/vivek.jpg"),
                ),
                title: Text("Vivek Gaber",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                subtitle: Text("8767686777"),
              ),
            ),
            Container(
              width: double.infinity,
              child: ListTile(
                onTap: (){},
                leading:CircleAvatar(
                  radius: 20,
                  // backgroundColor: bgcolor,
                  backgroundImage: AssetImage("assets/member/group.jpg"),
                ),
                title: Text("Android developer team",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                subtitle: Text("9165765678"),
              ),
            ),
            Container(
              width: double.infinity,
              child: ListTile(
                onTap: (){},
                leading:CircleAvatar(
                  radius: 20,
                  // backgroundColor: bgcolor,
                  backgroundImage: AssetImage("assets/member/mypic2.jpg"),
                ),
                title: Text("Developer Baba",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                subtitle: Text("8051370133"),
              ),
            ),
            Container(
              width: double.infinity,
              child: ListTile(
                onTap: (){},
                leading:CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.cyan,
                  child: Text("M"),
                ),
                title: Text("Manjesh sir",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                subtitle: Text("6768908802"),
              ),
            ),
            Container(
              width: double.infinity,
              child: ListTile(
                onTap: (){},
                leading:CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.deepPurpleAccent,
                  child: Icon(Icons.group,color: Colors.white,),
                ),
                title: Text("New group",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                subtitle: Text("Start group chat or split an expense"),
              ),
            ),
            Container(
              width: double.infinity,
              child: ListTile(
                onTap: (){},
                leading:CircleAvatar(
                  radius: 20,
                  // backgroundColor: bgcolor,
                  backgroundImage: AssetImage("assets/member/anshu.jpg"),
                ),
                title: Text("Anshu Vats",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                subtitle: Text("8298822061"),
              ),
            ),
            Container(
              width: double.infinity,
              child: ListTile(
                onTap: (){},
                leading:CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.cyan,
                  child: Text("A"),
                ),
                title: Text("Ajeet Kumar",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                subtitle: Text("765652234"),
              ),
            ),
            Container(
              width: double.infinity,
              child: ListTile(
                onTap: (){},
                leading:CircleAvatar(
                  radius: 20,
                  // backgroundColor: bgcolor,
                  backgroundImage: AssetImage("assets/member/bigbro.jpg"),
                ),
                title: Text("Priyanshu Roy",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                subtitle: Text("9608294286"),
              ),
            ),
            Container(
              width: double.infinity,
              child: ListTile(
                onTap: (){},
                leading:CircleAvatar(
                  radius: 20,
                  // backgroundColor: bgcolor,
                  backgroundImage: AssetImage("assets/member/gaurab.jpg"),
                ),
                title: Text("Gaurab Kumar",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                subtitle: Text("6767887684"),
              ),
            ),
            Container(
              width: double.infinity,
              child: ListTile(
                onTap: (){},
                leading:CircleAvatar(
                  radius: 20,
                  // backgroundColor: bgcolor,
                  backgroundImage: AssetImage("assets/member/mypic1.jpg"),
                ),
                title: Text("Piyush Roy",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                subtitle: Text("8051370133"),
              ),
            ),
            Container(
              width: double.infinity,
              child: ListTile(
                onTap: (){},
                leading:CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.indigoAccent,
                  child: Text("G"),
                ),
                title: Text("Gulshan Kumar",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                subtitle: Text("765652234"),
              ),
            ),
            Container(
              width: double.infinity,
              child: ListTile(
                onTap: (){},
                leading:CircleAvatar(
                  radius: 20,
                  // backgroundColor: bgcolor,
                  backgroundImage: AssetImage("assets/member/vivek.jpg"),
                ),
                title: Text("Vivek Gaber",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                subtitle: Text("8767686777"),
              ),
            ),
            Container(
              width: double.infinity,
              child: ListTile(
                onTap: (){},
                leading:CircleAvatar(
                  radius: 20,
                  // backgroundColor: bgcolor,
                  backgroundImage: AssetImage("assets/member/group.jpg"),
                ),
                title: Text("Android developer team",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                subtitle: Text("9165765678"),
              ),
            ),
            Container(
              width: double.infinity,
              child: ListTile(
                onTap: (){},
                leading:CircleAvatar(
                  radius: 20,
                  // backgroundColor: bgcolor,
                  backgroundImage: AssetImage("assets/member/mypic2.jpg"),
                ),
                title: Text("Developer Baba",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                subtitle: Text("8051370133"),
              ),
            ),
            Container(
              width: double.infinity,
              child: ListTile(
                onTap: (){},
                leading:CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.cyan,
                  child: Text("M"),
                ),
                title: Text("Manjesh sir",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                subtitle: Text("6768908802"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
