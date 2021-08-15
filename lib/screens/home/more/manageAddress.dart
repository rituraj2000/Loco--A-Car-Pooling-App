import 'package:flutter/material.dart';

import 'menuitem.dart';

class ManageAddress extends StatefulWidget {
  const ManageAddress({Key? key}) : super(key: key);

  @override
  _ManageAddressState createState() => _ManageAddressState();
}

class _ManageAddressState extends State<ManageAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffEBF3F9),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.grey.shade800),
      ),
      backgroundColor: Color(0xffEBF3F9),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 70, 50),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Text(
                      "Manage Bank Account",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade800,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Add/Edit Bank Account Information",
                      style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: ListView(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      editItem(true, 'Account Holder Name', 'P.S.N Moorthy'),
                      editItem(
                          true, 'Bank Account Number', '63050*************'),
                      editItem(true, 'IFSC', 'ICICI0006305'),
                      editItem(false, 'Bank Name', 'ICICI Bank'),
                      editItem(
                          false, 'Branch Name', 'Himayathnagar, Hyderabad'),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
