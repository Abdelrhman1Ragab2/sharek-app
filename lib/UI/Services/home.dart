import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Entity/User.dart';
import '../../Entity/history.dart';

class Home extends StatefulWidget {


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 400,
                child: ListView.separated(itemBuilder: (context ,index)=>build_item(index,List_Posts[index]),
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context,index)=>Container(height: 10,color:Colors.black),
                    itemCount: List_Posts.length),
              ),
            )

          ],
        ),
      )
    );
  }
  Widget build_item(int index,Postes post) {
    return Container(
        height: 430,
      width: 400,
      child: Column(
        children: [
          SizedBox(height: 10),

          Container(
            height: 60, width: 400
            , decoration: BoxDecoration(

            color: Colors.green,
          ),
            child: Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  child: Center(
                    child: Image.asset(
                      "assets/images/A.jpg",
                      width: 250,
                      height: 250,
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Text("عمرو شعبان ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )
                )
              ],
            ),
          ),
          Container(
            height: 300, width: 400,
            decoration: BoxDecoration(
                color: Colors.white
            ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("${post.post}", style: TextStyle(
                        color: Color.fromARGB(210, 8, 16, 78),
                        fontSize: 16,
                      ),
                        textAlign: TextAlign.end,
                      ),
                      SizedBox(height: 10,),
                      Image.asset("${post.url_image}",width: 350,height: 180,fit: BoxFit.contain,),
                    ],
                  ),

          ),
          Container(

            width: 400, height: 50,
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(onPressed: (){

                },

                  child: Center(
                    child: IconButton( onPressed: (){

                      setState(() {
                        star=!star;
                        Star_Color=star?Colors.amber:Colors.white;
                      });
                    }
                        ,icon: Icon(Icons.star,size: 30,color: Star_Color,)),
                  ),



                ),
                Container(width: 2,color: Colors.white,),
                MaterialButton(onPressed: (){

                },

                  child: Text("coment",style: TextStyle(fontSize: 20,color: Colors.white),),



                ),
                Container(width: 2,color: Colors.white,),
                MaterialButton(onPressed: (){

                },

                  child: Icon(Icons.share_rounded,size: 30,color: Colors.white,),



                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
