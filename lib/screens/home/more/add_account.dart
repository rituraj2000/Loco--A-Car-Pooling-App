import 'package:flutter/material.dart';
import 'addAddress.dart';
import 'manageBank.dart';

import 'manageAddress.dart';

class AddAccount extends StatefulWidget {
  const AddAccount({Key? key}) : super(key: key);

  @override
  _AddAccountState createState() => _AddAccountState();
}

class _AddAccountState extends State<AddAccount> {
  final TextEditingController name = TextEditingController();
  final TextEditingController accNumber = TextEditingController();
  final TextEditingController ifsc = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    name.dispose();
    accNumber.dispose();
    ifsc.dispose();
    super.dispose();
  }

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
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset("assets/bank.png"),
                      SizedBox(height: 30),
                      Padding(
                        padding: EdgeInsets.all(25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Account Holder Name",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey.shade800,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextField(
                              style: TextStyle(
                                color: Colors.grey.shade800,
                                fontSize: 16,
                              ),
                              controller: name,
                              decoration: InputDecoration(
                                hintText: "Enter Account Holder Name",
                              ),
                              keyboardType: TextInputType.name,
                            ),
                            SizedBox(height: 20),
                            Text(
                              "Bank Account Number",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey.shade800,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextField(
                              style: TextStyle(
                                color: Colors.grey.shade800,
                                fontSize: 16,
                              ),
                              controller: accNumber,
                              decoration: InputDecoration(
                                hintText: "Enter Account Number",
                              ),
                              keyboardType: TextInputType.number,
                            ),
                            SizedBox(height: 20),
                            Text(
                              "IFSC",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey.shade800,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextField(
                              style: TextStyle(
                                color: Colors.grey.shade800,
                                fontSize: 16,
                              ),
                              controller: ifsc,
                              decoration: InputDecoration(
                                hintText: "Enter IFSC Number",
                              ),
                              keyboardType: TextInputType.number,
                            ),
                            SizedBox(height: 30),
                            GestureDetector(
                              onTap: () {
                                //TODO: next page
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        ManageAddress(),
                                  ),
                                );
                              },
                              child: Center(
                                child: Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50)),
                                  ),
                                  child: Icon(
                                    Icons.keyboard_arrow_right,
                                    size: 50,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
