
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Entity/User.dart';
import '../exercises.dart';

class Cardio extends StatefulWidget {
  const Cardio({Key? key}) : super(key: key);

  @override
  State<Cardio> createState() => _CardioState();
}

class _CardioState extends State<Cardio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: Icon(Icons.menu),
        backgroundColor: Color.fromARGB(255, 14, 75, 44),
        title:  Center(child: Text(language?"Cardio":"كارديو")),
        actions: [ IconButton(onPressed: (){
          Navigator.pop(context, MaterialPageRoute(builder: (context)=>exercises()));
        },icon: Icon(Icons.arrow_back)),],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              SizedBox(height: 20),
              Text("Jumping Jacks",
              style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Image.asset("assets/images/jumpingjack-1457045563-1.gif",),

              SizedBox(height: 20),
              Text("High Knees",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
              SizedBox(height: 5),
              Image.asset("assets/images/highkneerun-1457044203-1.gif"),
              SizedBox(height: 20),
              Text("Squat Jumps",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
              SizedBox(height: 5),
              Image.asset("assets/images/Squat-Jump-1.gif"),
              SizedBox(height: 20),
              Text("Mountain Climbers",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
              SizedBox(height: 5),
              Image.asset("assets/images/mountainclimber-1472061303-1.gif"),
              SizedBox(height: 20),
              Text(" Burpees",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
              SizedBox(height: 5),
              Image.asset("assets/images/Burpees-1.gif"),
              SizedBox(height: 20),
              Text(" Jump Rope",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
              SizedBox(height: 5),
              Image.asset("assets/images/Reverse-Jump-400-1.gif"),

            ],
          ),
        ),
      ),
    );
  }
}
