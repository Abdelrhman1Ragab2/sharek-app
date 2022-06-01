
import 'package:shark/Entity/User.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Person extends StatefulWidget {
  const Person({Key? key}) : super(key: key);

  @override
  State<Person> createState() => _PersonState();
}

class _PersonState extends State<Person> {
  @override
  Widget build(BuildContext context) {
    return Container(
           width: double.infinity,
           height: double.infinity,
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               SizedBox(height: 15,),
               Icon(
                 Icons.person,
                 size: 60,
                 color: Colors.black,
               ),
               SizedBox(
                 height: 15,
               ),
               Container(
                 color: Colors.green,
                 child: Text(
                   language ? "   My Account   " : "  حسابي  ",
                   style: TextStyle(fontSize: 26, color: Colors.black),
                 ),
               ),
               SizedBox(height: 30,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [

                       Container(
                         width: 250,
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
                           borderRadius: BorderRadius.all(Radius.circular(20),
                           ),
                           color: Colors.white60,
                         ),
                         child: Center(
                           child: MaterialButton(
                             onPressed: (){
                               _showMyDialog(language?"My Data":"بياناتي",
                               "name : $profile_neme"
                               "\n"
                                   "Email : $profile_email "
                                   "\n"
                                   "phone: $profile_phone   "
                                   "\n"
                                   "gender : $profile_gender   ",
                                   "\n"
                                   "ok");
                             },
                             child: Text(
                               language?"My Data":"بياناتي",
                               style: TextStyle(
                                 fontSize: 25,
                               ),
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
                           borderRadius: BorderRadius.all(Radius.circular(40),
                           ),
                           color: Colors.green,
                         ),
                         child: Center(
                           child: Text(
                              "1",
                             style: TextStyle(
                               fontSize: 25,
                               color: Colors.white,
                             ),
                           ),
                         ),
                       )
                     ],
                   ),
               SizedBox(height: 30,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [

                   Container(
                     width: 250,
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
                       borderRadius: BorderRadius.all(Radius.circular(20),
                       ),
                       color: Colors.white60
                     ),
                     child: Center(
                       child: MaterialButton(
                         onPressed: (){

                         },
                         child: Text(
                           language?" My appointment ":"  مواعيدي  ",
                           style: TextStyle(
                             fontSize: 25,
                           ),
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
                       borderRadius: BorderRadius.all(Radius.circular(40),
                       ),
                       color: Colors.green
                     ),
                     child: Center(
                       child: Text(
                         "2",
                         style: TextStyle(
                           fontSize: 25,
                           color: Colors.white
                         ),
                       ),
                     ),
                   )
                 ],
               ),
                 ],
               )


    );
  }





  Future<void> _showMyDialog(String title,String body,String buttom) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(

          backgroundColor: Colors.green,
          elevation: 100,
          title:  Text("$title"),
          content: SingleChildScrollView(
            child: ListBody(
              children:  <Widget>[
                Text('$body',style: TextStyle(color: Color.fromARGB(210, 8, 16, 78),),),
              ],
            ),
          ),
          actions: <Widget>[
            Row(
              children: [
                TextButton(
                  child:  Text('$buttom',style: TextStyle(color: Colors.white),),
                  onPressed: () {


                    Navigator.of(context).pop();

                  },
                ),


              ],
            ),
          ],
        );
      },
    );
  }




}
