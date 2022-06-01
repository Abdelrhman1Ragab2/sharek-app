import 'package:shark/UI/Auth/sign_in.dart';
import 'package:shark/UI/Auth/sign_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Entity/User.dart';

class First_page extends StatefulWidget {

  @override
  State<First_page> createState() => _First_pageState();
}

class _First_pageState extends State<First_page> {
  @override
  void initState(){

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Color.fromARGB(255, 14, 75, 44),
        title: Center(child: Text("شارك")),
        actions: [
          IconButton(onPressed: (){
          }, icon: Icon(Icons.home_work_outlined))],
      ),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.white
          ),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/logo.jpg",
                width: 250,
                height: 250,
              ),
              SizedBox(height: 70,),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Sing_in()));
                },
                child: Text( language?"Sign in":"تسجيل الدخول",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  color: Colors.white,
                ),),
                color: Color.fromARGB(255, 14, 75, 44),
                minWidth: 200,
              ),
              SizedBox(height: 8,),
              Text(language?"Or":"أو",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                color: Colors.white
              ),),
              SizedBox(height: 10,),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Sign_up()));

                },
                child: Text(language?"Sign up":"الاشتراك",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  color: Colors.white,
                ),),
                color: Color.fromARGB(255, 14, 75, 44),
                minWidth: 200,
              ),
              SizedBox(height: 30,),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    language=!language;
                  });


                },
                child: Text(!language?"عربي":"English",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.white,
                ),),
                color: Color.fromARGB(255, 14, 75, 44),
                minWidth: 120,
              ),


            ],
          ),
        ),
    );
  }
}
