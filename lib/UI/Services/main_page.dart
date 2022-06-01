import 'package:shark/UI/Services/person.dart';
import 'package:shark/UI/Services/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Entity/User.dart';
import '../Auth/sign_in.dart';
import 'exercises.dart';
import 'home.dart';
class Main_page extends StatefulWidget {
  const Main_page({Key? key}) : super(key: key);

  @override
  State<Main_page> createState() => _Main_pageState();
}

class _Main_pageState extends State<Main_page> {
  var currentIndex=1;
  List<Widget> listScreen=
  [
    Person(),Home(),exercises(),Settings()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          backgroundColor: Color.fromARGB(255, 14, 75, 44),
        title:  Center(child: Text(language?"shark":"شارك")),
        actions: [ IconButton(onPressed: (){
          Navigator.pop(context, MaterialPageRoute(builder: (context)=>Sing_in()));
        },icon: Icon(Icons.logout)),],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 14, 75, 44),
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex=index;
          });
        },

        elevation: 250,

        items:
        [
          BottomNavigationBarItem(

            icon: Icon(
              Icons.person,size: 30,color: Colors.white,

            ),
            label: language?"profile":"حسابي"
          ),




          // BottomNavigationBarItem(
          //     icon: Icon(
          //       Icons.account_tree_rounded,size: 30,color: Colors.white,)
          //     ,label: language?"competitons":"المسابقات "
          //
          //
          // ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,size: 30,color: Colors.white,),
              label: language?"home":"الرئيسية"
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.accessibility_new_rounded,size: 30,color: Colors.white,)
              ,label: language?"exercises":"التمارين",


          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,size: 30,color: Colors.white,)
              ,label: language?"setting":"الضبط"


          ),


        ],
      ),
      body: listScreen[currentIndex],
    );
  }
}
