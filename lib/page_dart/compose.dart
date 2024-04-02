import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dashboard.dart';

class Compose extends StatefulWidget {
  const Compose({super.key});

  @override
  State<Compose> createState() => _ComposeState();
}

class _ComposeState extends State<Compose> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 5,),
            Row(
              children: [
                IconButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DashBoard()));
                    },
                    icon: Icon(Icons.arrow_back)),
                SizedBox(width: 180,),
                IconButton(onPressed: (){},
                    icon: Icon(Icons.attachment_outlined)),
                SizedBox(width: 5,),
                IconButton(onPressed: (){},
                    icon: Icon(Icons.send_outlined)),
                SizedBox(width: 5,),
                IconButton(onPressed: (){},
                    icon: Icon(Icons.more_vert_outlined)),
              ],
            ),
            SizedBox(height: 30,),
            Container(
              margin: EdgeInsets.only(left: 16 ,right: 16),
              height: 50,
              width: double.maxFinite,
              child: Row(
                children: [
                  Text("From"),
                  SizedBox(width: 15,),
                  Text("tusharbhardwajtttt@gmail.com" , style: TextStyle(fontSize: 15),),
                  SizedBox(width: 45,),
                  IconButton(onPressed: (){},
                      icon: Icon(Icons.keyboard_arrow_down_outlined , size: 30,))
                ],
              ),
            ),
            Divider(color: Colors.black, thickness: 0.25,),
            Container(
              margin: EdgeInsets.only(left: 16 ,right: 16),
              height: 300,
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 360,
                    height: 40,
                    child: Row(
                      children: [
                        Text("To"),
                        SizedBox(width: 5,),
                        Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none
                              ),
                            )),
                        IconButton(onPressed: (){},
                            icon: Icon(Icons.keyboard_arrow_down_outlined , size: 30,))
                      ],
                    ),

                  ),
                  SizedBox(height: 10,),
                  Text("Subject"),
                  SizedBox(height: 20,),
                  Text("Compose Email"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
