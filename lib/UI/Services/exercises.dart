
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Entity/User.dart';
import 'exercises_S/cardio.dart';

class exercises extends StatefulWidget {
  const exercises({Key? key}) : super(key: key);

  @override
  State<exercises> createState() => _exercisesState();
}

class _exercisesState extends State<exercises> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(10.0, 10.0),
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 7,
                      blurRadius: 10,
                    )
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  color: Colors.white60,
                ),
                child: MaterialButton(
                  onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Cardio()));
                  },
                  child: Text(
                    language ? " Cardio " : " الكارديو ",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(10.0, 10.0),
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 7,
                      blurRadius: 10,
                    )
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(40),
                  ),
                  color: Colors.green,
                ),
                child: Center(
                  child: Text(
                    "1",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(10.0, 10.0),
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 7,
                        blurRadius: 10,
                      )
                    ],
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Colors.white60),
                child: Center(
                  child: Text(
                    language ? " Strength " : "  القوة  ",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(10.0, 10.0),
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 7,
                        blurRadius: 10,
                      )
                    ],
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                    color: Colors.green
                ),
                child: Center(
                  child: Text(
                    "2",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(10.0, 10.0),
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 7,
                      blurRadius: 10,
                    )
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  color: Colors.white60,
                ),
                child: Center(
                  child: Text(
                    language ? " Stretching " : " الاطالة  ",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(10.0, 10.0),
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 7,
                      blurRadius: 10,
                    )
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(40),
                  ),
                  color: Colors.green,
                ),
                child: Center(
                  child: Text(
                    "3",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(10.0, 10.0),
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 7,
                        blurRadius: 10,
                      )
                    ],
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Colors.white60),
                child: Center(
                  child: Text(
                    language ? "  weight loss " : " التخسيس  ",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(10.0, 10.0),
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 7,
                      blurRadius: 10,
                    )
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(40),
                  ),
                  color: Colors.green,
                ),
                child: Center(
                  child: Text(
                    "4",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),


        ],
      ),
    );
  }
}
