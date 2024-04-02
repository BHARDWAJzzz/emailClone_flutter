import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'compose.dart';
import 'meet.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            padding: EdgeInsets.all(10),
            children: [
              SizedBox(
                height: 80,
                child: DrawerHeader(
                  padding: EdgeInsets.only(bottom: 10, left: 25),
                  child: Text(
                    "Gmail",
                    style: TextStyle(fontSize: 25, color: Colors.red),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.inbox_outlined),
                horizontalTitleGap: 25,
                title: Text("All inboxes",
                    style: TextStyle(fontWeight: FontWeight.w500)),
                minVerticalPadding: 8,
              ),
              Divider(
                color: Colors.black,
                thickness: 0.25,
              ),
              ListTile(
                leading: Icon(Icons.inbox),
                horizontalTitleGap: 25,
                minVerticalPadding: 8,
                title: Text("Primary",
                    style: TextStyle(fontWeight: FontWeight.w500)),
                trailing: Container(
                  alignment: Alignment.center,
                  height: 22,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "1 new",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.local_offer_outlined),
                horizontalTitleGap: 25,
                minVerticalPadding: 5,
                title: Text("Promotions",
                    style: TextStyle(fontWeight: FontWeight.w500)),
                trailing: Container(
                  alignment: Alignment.center,
                  height: 22,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.greenAccent.shade400,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "12 new",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.people_alt_outlined),
                horizontalTitleGap: 25,
                minVerticalPadding: 8,
                title: Text(
                  "Social",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                trailing: Container(
                  alignment: Alignment.center,
                  height: 22,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent.shade200,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "20 new",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 15), child: Text("All label")),
              ListTile(
                leading: Icon(Icons.star_border),
                horizontalTitleGap: 25,
                minVerticalPadding: 8,
                title: Text(
                  "Starred",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                trailing: Text("2"),
              ),
              ListTile(
                leading: Icon(Icons.watch_later_outlined),
                horizontalTitleGap: 25,
                minVerticalPadding: 8,
                title: Text(
                  "Snoozed",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                trailing: Text("20 new"),
              ),
              ListTile(
                leading: Icon(Icons.label_important_outline_rounded),
                horizontalTitleGap: 25,
                minVerticalPadding: 8,
                title: Text(
                  "Important",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                trailing: Text("42"),
              ),
              ListTile(
                leading: Icon(Icons.send_outlined),
                horizontalTitleGap: 25,
                minVerticalPadding: 8,
                title: Text(
                  "Sent",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              ListTile(
                leading: Icon(Icons.schedule_send_outlined),
                horizontalTitleGap: 25,
                minVerticalPadding: 8,
                title: Text(
                  "Scheduled",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              ListTile(
                leading: Icon(Icons.outbox_outlined),
                horizontalTitleGap: 25,
                minVerticalPadding: 8,
                title: Text(
                  "Outbox",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              ListTile(
                leading: Icon(Icons.drafts_outlined),
                horizontalTitleGap: 25,
                minVerticalPadding: 8,
                title: Text(
                  "Drafts",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                trailing: Text(
                  "8",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: Icon(Icons.all_inbox_outlined),
                horizontalTitleGap: 25,
                minVerticalPadding: 8,
                title: Text(
                  "All mail",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                trailing:
                Text("99+", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              ListTile(
                leading: Icon(Icons.report_gmailerrorred_outlined),
                horizontalTitleGap: 25,
                minVerticalPadding: 8,
                title: Text(
                  "Spam",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                trailing:
                Text("34", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              ListTile(
                leading: Icon(Icons.delete_outline_outlined),
                horizontalTitleGap: 25,
                minVerticalPadding: 8,
                title: Text(
                  "Bin",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text("Google apps"),
              ),
              ListTile(
                leading: Icon(Icons.calendar_today),
                horizontalTitleGap: 25,
                minVerticalPadding: 8,
                title: Text(
                  "Calendar",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              ListTile(
                leading: Icon(Icons.account_circle_outlined),
                horizontalTitleGap: 25,
                minVerticalPadding: 8,
                title: Text(
                  "Contacts",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                trailing: Text("20 new",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Divider(
                color: Colors.black,
                thickness: 0.25,
              ),
              ListTile(
                leading: Icon(Icons.settings_outlined),
                horizontalTitleGap: 25,
                minVerticalPadding: 8,
                title: Text(
                  "Setting",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              ListTile(
                leading: Icon(Icons.help_outline),
                horizontalTitleGap: 25,
                minVerticalPadding: 8,
                title: Text(
                  "Help",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                height: 50,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: Colors.indigo.shade50,
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Builder(
                      builder: (context) => IconButton(
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                          icon: Icon(
                            Icons.menu_rounded,
                            size: 30,
                          )),
                    ),
                    Container(
                      height: 100,
                      width: 210,
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: "Search in emails",
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: InkWell(
                        onTap: () {
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
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Primary",
                  )),
              SizedBox(
                height: 20,
              ),
              ...List.generate(
                12,
                    (index) => Container(
                  margin: EdgeInsets.only(bottom: 23),
                  height: 70,
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 15,  bottom: 13),
                        height: 60,
                        width: 60,
                        child: CircleAvatar(
                          backgroundColor: avatarColor[index],
                          child: Text(
                            avatarText[index],
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 18),
                        height: 70,
                        width: 265,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              mailTitle[index],
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 3,),
                            Expanded(
                              child: Text(
                                mailSubtitle[index],
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(child: Text(mailBody[index]))
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 12) ,
                            child: Text(
                              mailDates[index],
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                          Icon(
                            Icons.star_border,
                            size: 19,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.indigo.shade50,
          items: [
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.mail,
                    size: 30,
                  ),
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: IconButton(
                  icon: Icon(
                    Icons.videocam_outlined,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Meet()));
                  },
                ),
                label: "")
          ],
        ),
        floatingActionButton: Container(
          height: 60,
          width: 140,
          child: FloatingActionButton(
            backgroundColor: Colors.indigo.shade50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.create_outlined,
                  color: Colors.black,
                ),
                Text(
                  "Compose",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Colors.black),
                )
              ],
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Compose()));
            },
          ),
        ),
      ),
    );;
  }
}

void showCustomDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          child: Container(
            height: 450,
            width: 450,
            decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Text(
                  "Google",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10, top: 25),
                  height: 350,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(12),
                        height: 100,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.blue,
                                  radius: 18,
                                  child: Text(
                                    "T",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                    child: Text(
                                      "Tushar Bhardwaj",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 17),
                                    )),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "99+",
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            Container(
                              width: 180,
                              height: 24,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(color: Colors.black)),
                              child: Center(
                                  child: Expanded(
                                      child: Text(
                                        "Manage your account",
                                        style: TextStyle(fontWeight: FontWeight.w500),
                                      ))),
                            )
                          ],
                        ),
                      ),
                      Divider(color: Colors.grey),
                      Container(
                        height: 100,
                        margin: EdgeInsets.only(left: 12, right: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              " 94% of storage used",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("14.2 of 15 GB is used"),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 180,
                              height: 24,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(color: Colors.black)),
                              child: Center(
                                  child: Expanded(
                                      child: Text(
                                        "Manage your storage",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.red),
                                      ))),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Container(
                        height: 80,
                        margin: EdgeInsets.only(left: 12, right: 12),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.account_circle_outlined),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                    child: Text(
                                      "Add another account",
                                      style: TextStyle(fontWeight: FontWeight.w500),
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Icon(Icons.settings_outlined),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                    child: Text(
                                      "Manage account on this device",
                                      style: TextStyle(fontWeight: FontWeight.w500),
                                    )),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ));
    },
  );
}

List<String> avatarText = [
  "G",
  "I",
  "C",
  "A",
  "L",
  "M",
  "F",
  "F",
  "C",
  "P",
  "G",
  "S"
];
List<Color> avatarColor = [
  Colors.blue,
  Colors.pinkAccent,
  Colors.lightGreen,
  Colors.deepPurpleAccent,
  Colors.purple,
  Colors.red,
  Colors.black,
  Colors.yellow,
  Colors.cyan,
  Colors.amber,
  Colors.tealAccent,
  Colors.lightBlue
];

List<String> mailTitle = [
  'Google',
  'Instagram',
  'Clash of Clans',
  'Amazon',
  'Linkedin',
  'Maps',
  'Fuaark',
  'Facebook',
  'Crypto',
  'Paytm',
  'Gail',
  'Samsung'
];

List<String> mailSubtitle = [
  'Your account storage is 90% full...',
  "New login to Instagram from Chrome...",
  'Your village  destroyed by kuku...',
  'Amazon great summer sale is back...',
  "Your OTP for Linkedin is 2345...",
  "Add your Home location to Google...",
  "Get 250 off on Gym wear...",
  "You haven't login from long time...",
  "Check today stock market... ",
  "Get casback on transaction greater...",
  "Your OTP for Gail is 2345...",
  'Samsung great summer sale is back...'
];

List<String> mailBody = [
  'Get 10 gb extra at 10...',
  "We noticed a new login, user ...",
  'Get new Archer of level...',
  "We noticed a new login, user ...",
  'Get more exciting offer',
  "OTP is only valid for 1 min...",
  'Get 10 gb extra at 10...',
  'Get more exciting offer',
  'Get new Archer of level...',
  "We noticed a new login, user ...",
  'Get more exciting offer',
  "OTP is only valid for 1 min...",
];

List<String> mailDates = [
  '1 min ',
  '6 hr',
  '24 hr',
  'Yes',
  "20 mar",
  "18 mar",
  "12 mar",
  "8 mar",
  "1 mar",
  "28 feb",
  "20 feb",
  "15 feb"
];

