import 'package:flutter/material.dart';
import 'dart:async';

import 'Auth/first_page.dart';

class splashScrean extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() =>Mysplash();

}
class Mysplash extends State<splashScrean>
{

  initState()
  { var i=0;
    super.initState();
    Timer(Duration(milliseconds:3000),
            (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>First_page()),);
        }
    );
  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/logo.jpg",
                  width: 300,
                ),
                SizedBox(height: 30,),
                Text("مبادرة شارك",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),)
                // Text("YOUR DENTIST",style: TextStyle(
                //   fontWeight: FontWeight.bold,
                //   fontSize: 30,
                //   color: Colors.blueGrey
                // ),),
              ],
            )
        ),
      )
    );
  }

}

