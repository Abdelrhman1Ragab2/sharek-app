
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Entity/User.dart';
import 'first_page.dart';

class Sign_up extends StatefulWidget {
  const Sign_up({Key? key}) : super(key: key);

  @override
  State<Sign_up> createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_up> {
  var name_controller = TextEditingController();
  var phone_controller = TextEditingController();
  var email_controller = TextEditingController();
  var password_controller = TextEditingController();
  var Gender_controller = TextEditingController();
  var formkey = GlobalKey<FormState>();
  String signup_message="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context, MaterialPageRoute(builder: (context)=>First_page()));
        },icon: Icon(Icons.arrow_back)),
        backgroundColor: Color.fromARGB(255, 14, 75, 44),
        title: Center(child: Text(language?"shark":"شارك")),
        actions: [Icon(Icons.home_work_outlined)],
      ),
      body: Container(

          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Image.asset(
                    "assets/images/logo.jpg",
                    width: 150,
                    height: 150,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextFormField(
                      controller: name_controller,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: language?"name":"الاسم",
                        hintStyle: TextStyle(color: Colors.black, fontSize: 18),
                        prefixIcon:
                        Icon(Icons.drive_file_rename_outline, color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextFormField(
                      controller: email_controller,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: language?"Email":"اسم المستخدم",
                        hintStyle: TextStyle(color: Colors.black, fontSize: 18),
                        prefixIcon:
                        Icon(Icons.email_sharp, color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextFormField(
                      controller: password_controller,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: language?"Password":"كلمة المرور",
                        hintStyle: TextStyle(color: Colors.black, fontSize: 18),
                        prefixIcon:
                        Icon(Icons.password_outlined, color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextFormField(
                      controller: phone_controller,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: language?"phone":"موبايل",
                        hintStyle: TextStyle(color: Colors.black, fontSize: 18),
                        prefixIcon:
                        Icon(Icons.phone_android, color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextFormField(
                      controller: Gender_controller,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: language?"Gender":"الجنس",
                        hintStyle: TextStyle(color: Colors.black, fontSize: 18),
                        prefixIcon:
                        Icon(Icons.transgender_outlined, color: Colors.black),
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      var index=Count_User;
                      profile_neme=USERS[index].name=name_controller.text;
                      profile_email=USERS[index].email=email_controller.text;
                      USERS[index].password=password_controller.text;
                      profile_phone=USERS[index].phone=phone_controller.text;
                      profile_gender=USERS[index].gender=Gender_controller.text;
                      Count_User++;
                      if(email_controller.text.isNotEmpty && password_controller.text.isNotEmpty &&
                          name_controller.text.isNotEmpty && phone_controller.text.isNotEmpty&&
                          Gender_controller.text.isNotEmpty)
                        {
                          setState(() {
                            var index=Count_User;
                            USERS[index].name=name_controller.text;
                            USERS[index].email=email_controller.text;
                            USERS[index].password=password_controller.text;
                            USERS[index].phone=phone_controller.text;
                            USERS[index].gender=Gender_controller.text;
                            Count_User++;
                            signup_message=language?"sign up Successful ":" تم التسجيل بنجاح";

                          });

                        }


                    },
                    child: Text(
                      language?" Sign up ":" اشترك ",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    color: Color.fromARGB(255, 14, 75, 44),
                  ),
                  SizedBox(height: 10,),
                  Text("$signup_message",
                    style: TextStyle(color: Colors.black, fontSize: 18),)

                ],
              ),
            ),
          )),
    );
  }
}
