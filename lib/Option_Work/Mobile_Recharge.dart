import 'package:flutter/material.dart';

class Mobile_Recharge extends StatelessWidget {
  const Mobile_Recharge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Mobile recharge"),
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
        scrollDirection: Axis.vertical,
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15,),
            Text("Enter mobile number",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
            SizedBox(height: 15,),

            TextFormField(
              autofocus: true,
              // controller: numberController,
              // onChanged: (text) {
              //   setState(() {
              //     _isButtonEnabled = text.isNotEmpty;
              //   });
              // },
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
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("My recharge",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),

                TextButton(onPressed: (){},
                    child:Text("See more",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
                ),
              ],
            ),
            SizedBox(height: 10,),

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
      ),
    );
  }
}
