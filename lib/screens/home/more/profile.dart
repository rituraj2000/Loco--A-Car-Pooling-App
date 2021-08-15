import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'menuitem.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  final aadhar = TextEditingController();
  final dl = TextEditingController();
  bool verified = false;

  @override
  void dispose() {
    // TODO: implement dispose
    aadhar.dispose();
    dl.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffEBF3F9),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.grey),
      ),
      backgroundColor: Color(0xffEBF3F9),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 25, 25),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "My Account",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade800,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Icon(
                                  verified
                                      ? FontAwesomeIcons.check
                                      : FontAwesomeIcons.ban,
                                  color: verified ? Colors.green : Colors.red,
                                  size: 20,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  verified ? 'Verified' : "Not Verified",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Stack(alignment: Alignment.centerLeft, children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                child: Image.asset(
                                  "assets/profile.png",
                                ),
                              ),
                            ),
                          ),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.black54,
                            child: Icon(
                              Icons.photo_camera,
                              color: Colors.white,
                            ),
                          )
                        ]),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: ListView(
                  children: [
                    editItem(true, 'Name', 'Suurya Prabhat'),
                    editItem(true, 'Email', 'suuryaprabhat@gmail.com'),
                    editItem(true, 'Phone Number', '7673925340'),
                    Divider(
                      thickness: 2,
                      color: Color(0xffEBF3F9),
                    ),
                    verified
                        ? editItem(true, 'Aadhaar ', 'Aadhaar.pdf',
                            icon: FontAwesomeIcons.check)
                        : Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Aadhaar',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey.shade800),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    OutlinedButton(
                                      onPressed: () {},
                                      child: Row(
                                        children: [
                                          Icon(
                                            FontAwesomeIcons.fileUpload,
                                            color: Colors.black,
                                          ),
                                          Text(
                                            'Upload',
                                            style:
                                                TextStyle(color: Colors.black),
                                          )
                                        ],
                                      ),
                                    ),
                                    Text(
                                      'or',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    SizedBox(
                                        width: 200,
                                        child: TextField(
                                          controller: aadhar,
                                          decoration: InputDecoration(
                                              hintText: 'Aadhaar Number'),
                                        ))
                                  ],
                                ),
                              ],
                            ),
                          ),
                    verified
                        ? editItem(true, 'Driving License ', 'dl.pdf',
                            icon: FontAwesomeIcons.check)
                        : Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Driving License',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey.shade800),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    OutlinedButton(
                                      onPressed: () {},
                                      child: Row(
                                        children: [
                                          Icon(
                                            FontAwesomeIcons.fileUpload,
                                            color: Colors.black,
                                          ),
                                          Text(
                                            'Upload',
                                            style:
                                                TextStyle(color: Colors.black),
                                          )
                                        ],
                                      ),
                                    ),
                                    Text(
                                      'or',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    SizedBox(
                                        width: 200,
                                        child: TextField(
                                          controller: dl,
                                          decoration: InputDecoration(
                                              hintText: 'DL Number'),
                                        ))
                                  ],
                                ),
                              ],
                            ),
                          )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
