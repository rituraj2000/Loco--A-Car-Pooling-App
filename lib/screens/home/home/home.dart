import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:go_pool/components/widgets/entry_field.dart';
import 'package:go_pool/language/locale.dart';
import 'package:go_pool/screens/home/home/findPool.dart';
import 'package:go_pool/screens/home/selectLocation.dart';
import 'package:go_pool/theme/colors.dart';

import 'package:top_snackbar_flutter/custom_snack_bar.dart';

import 'package:top_snackbar_flutter/top_snack_bar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool locationSelected = false;
  bool isFindPool = true;

  var pi = 3.14;

  @override
  Widget build(BuildContext context) {
    String user = "notVerified";

    var locale = AppLocalizations.of(context)!;

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            "assets/map.png",
            fit: BoxFit.cover,
          ),
        ),
        FadedSlideAnimation(
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 225,
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 50,
                      width: 304,
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Color(0xff000549),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return FindPool(isFindPool = true);
                                }));
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.only(left: 5, right: 5),
                              height: 50,
                              width: 130,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                ),
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.drive_eta,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      locale.findPool!,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(
                                              fontSize: 13.5,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                // isFindPool = false;
                              });
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => FindPool(false)));
                            },
                            child: GestureDetector(
                              onTap: () {
                                if (user == "verified") {
                                  showTopSnackBar(
                                    context,
                                    CustomSnackBar.success(
                                      message:
                                          "User is verified", //TODO: Navigate to offer ride page.
                                    ),
                                  );
                                } else if (user == "notVerified") {
                                  showTopSnackBar(
                                      context,
                                      Container(
                                        height: 80,
                                        decoration: BoxDecoration(
                                          color: Color(0xffff5252),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(12)),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black26,
                                              offset: Offset(0.0, 8.0),
                                              spreadRadius: 1,
                                              blurRadius: 30,
                                            ),
                                          ],
                                        ),
                                        width: double.infinity,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              top: -10,
                                              left: -8,
                                              child: ClipRRect(
                                                child: Container(
                                                  height: 95,
                                                  child: Transform.rotate(
                                                    angle: 32 * pi / 180,
                                                    child: Icon(
                                                      Icons.error_outline,
                                                      color: const Color(
                                                          0x15000000),
                                                      size: 120,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Center(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 24),
                                                child: Column(
                                                  children: [
                                                    SizedBox(height: 5),
                                                    Text(
                                                      "You are not verified to offer a ride, Verify yourself",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 12,
                                                        color: Colors.white,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      maxLines: 2,
                                                    ),
                                                    SizedBox(height: 10),
                                                    GestureDetector(
                                                      onTap: () {
                                                        //TODO: verification screen to offer ride
                                                      },
                                                      child: Text(
                                                        "Click here to get verified",
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          fontSize: 12,
                                                          color: Colors.white,
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        maxLines: 2,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ));
                                }
                              },
                              child: Container(
                                padding: EdgeInsets.only(left: 5, right: 5),
                                height: 50,
                                width: 150,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Center(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.nature_people,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        locale.offerPool!,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .copyWith(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 13.5,
                                                color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 145,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SelectLocation()));
                  },
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      TextEntryField(
                        prefixIcon: Icon(
                          Icons.circle,
                          color: primaryColor,
                          size: 15,
                        ),
                        hint: locale.pickupLocation,
                        initialValue: "1024, Central Park, New York",
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                          cursorColor: primaryColor,
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SelectLocation()));
                          },
                          autofocus: false,
                          readOnly: true,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontSize: 13.5),
                          minLines: 1,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.location_on,
                              color: Colors.red,
                              size: 20,
                            ),
                            hintText: locale.dropLocation,
                            hintStyle: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(color: Colors.grey, fontSize: 13.5),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey[200]!),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey[200]!),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey[200]!),
                            ),
                            counter: Offstage(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          beginOffset: Offset(0, 0.4),
          endOffset: Offset(0, 0),
          slideCurve: Curves.linearToEaseOut,
        ),
        Positioned(
          right: 20,
          bottom: 245,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.gps_fixed,
              color: Colors.grey[400],
            ),
          ),
        ),
        Positioned(
            right: 150,
            bottom: 450,
            child: Container(
              height: 40,
              child: Image.asset("assets/pin.png"),
            )),
      ],
    );
  }
}
