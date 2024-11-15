import 'package:flutter/material.dart';

class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back,color: Colors.black54,),
        ),
        title: Text("Select language",style: TextStyle(color: Colors.black),),
        actions: [
          PopupMenuButton(
            color: Colors.black,
              onSelected: (onselected){

              },
              itemBuilder:(context) => [

                PopupMenuItem(
                    value: 1,
                    child: Text("Get help",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.white),)),

                PopupMenuItem(
                    value: 2,
                    child: Text("Send feedback",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.white),))

              ],)
        ],

      ),

      body:  SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.only(top: 5),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.circle_outlined,size: 25,color: Colors.green,),
                  title: Text("English",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                  subtitle: Text("(device's language)"),
                ),
                ListTile(
                  leading: Icon(Icons.circle_outlined,size: 25),
                  title: Text("हिन्दी",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                  subtitle: Text("Hindi"),
                ),
                ListTile(
                  leading: Icon(Icons.circle_outlined,size: 25),
                  title: Text("বাংলা",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                  subtitle: Text("Bengali"),
                ),
                ListTile(
                  leading: Icon(Icons.circle_outlined,size: 25),
                  title: Text("मराठी",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                  subtitle: Text("Marathi"),
                ),
                ListTile(
                  leading: Icon(Icons.circle_outlined,size: 25),
                  title: Text("தமிழ்",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                  subtitle: Text("Tamil"),
                ),
                ListTile(
                  leading: Icon(Icons.circle_outlined,size: 25),
                  title: Text("हગુજરાતી",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                  subtitle: Text("Gujarati"),
                ),
                ListTile(
                  leading: Icon(Icons.circle_outlined,size: 25),
                  title: Text("اُردُو",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                  subtitle: Text("Urdu"),
                ),
                ListTile(
                  leading: Icon(Icons.circle_outlined,size: 25),
                  title: Text("हಕನ್ನಡ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                  subtitle: Text("Kannada"),
                ),
                ListTile(
                  leading: Icon(Icons.circle_outlined,size: 25),
                  title: Text("ଓଡ଼ିଆ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                  subtitle: Text("Odia"),
                ),
                ListTile(
                  leading: Icon(Icons.circle_outlined,size: 25),
                  title: Text("हമലയാളം",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                  subtitle: Text("Malayalam"),
                ),
                ListTile(
                  leading: Icon(Icons.circle_outlined,size: 25),
                  title: Text("বਪੰਜਾਬੀپنجابی",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                  subtitle: Text("Punjabi"),
                ),
                ListTile(
                  leading: Icon(Icons.circle_outlined,size: 25),
                  title: Text("हঅসমীয়া",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                  subtitle: Text("Assamese"),
                ),
                ListTile(
                  leading: Icon(Icons.circle_outlined,size: 25),
                  title: Text("বमैथिली",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                  subtitle: Text("Maithili"),
                ),

                // Icon(Icons.circle_outlined,size: 20,color: Colors.green,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
