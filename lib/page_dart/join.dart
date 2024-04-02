
import 'package:flutter/material.dart';

import 'meet.dart';

class Join extends StatefulWidget {
  const Join({super.key});

  @override
  State<Join> createState() => _JoinState();
}

class _JoinState extends State<Join> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 10,),
            Row(
              children: [
                IconButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Meet()));
                    },
                    icon: Icon(Icons.arrow_back)),
                SizedBox(width: 18,),
                Text("Join with a code" , style: TextStyle(fontSize: 22),),
                SizedBox(
                  width: 100,
                ),
                Text("Join"),
              ],
            ),
            Container(
              height: 100,
              width: double.maxFinite,
              margin: EdgeInsets.only(top: 30, right: 15 , left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Enter the code provided by the meeting organiser"),
                  SizedBox(height: 20,),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "Example : abc pqy etc",
                        contentPadding: EdgeInsets.only(top: 12 , left: 5),
                        fillColor: Colors.indigo.shade50,
                        filled: true
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}



