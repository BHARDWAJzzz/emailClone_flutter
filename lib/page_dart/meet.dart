
import 'package:flutter/material.dart';

import 'dashboard.dart';
import 'join.dart';

class Meet extends StatefulWidget {
  const Meet({super.key});

  @override
  State<Meet> createState() => _MeetState();
}

class _MeetState extends State<Meet> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 50,
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Builder(builder: (context) {
                    return IconButton(
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                        icon: Icon(
                          Icons.menu,
                          size: 30,
                        ));
                  }),
                  SizedBox(
                    width: 85,
                  ),
                  Text(
                    "Meet",
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(
                    width: 85,
                  ),
                  InkWell(
                    onTap: (){
                      showCustomDialog(context);
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 20,
                      child: Text(
                        "T",
                        style: TextStyle(fontSize: 23, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple.shade700,
                      borderRadius: BorderRadius.circular(20)),
                  height: 35,
                  width: 170,
                  child: Text(
                    "New meeting",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Join()));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(20)),
                    height: 35,
                    width: 170,
                    child: Text("Join with a code",
                        style: TextStyle(
                            fontSize: 15, color: Colors.deepPurple.shade700)),
                  ),
                )
              ],
            ),
            Expanded(
              child: PageView.builder(
                itemCount: 2,
                pageSnapping: true,
                itemBuilder: (context, pagePosition) {
                  return Container(
                    margin: EdgeInsets.all(20),
                    child: Image(image: AssetImage('assets/images/email.png'),),

                  );
                },
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: IconButton(
                  icon: Icon(
                    Icons.mail,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DashBoard()));
                  },
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.videocam_outlined,
                  size: 30,
                ),
                label: "")
          ],
        ),
      ),
    );
  }
}

List<String> images = [
  'assets/images/email.png',
  'assets/images/email2.jpeg'
];
