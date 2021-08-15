import 'package:animation_wrappers/Animations/faded_scale_animation.dart';
import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_pool/components/widgets/colorButton.dart';
import 'package:go_pool/language/locale.dart';
import 'package:go_pool/screens/home/chats/chatPage.dart';
import 'package:go_pool/screens/home/home/endTripPoolTaker.dart';
import 'package:go_pool/screens/home/home/endTripPooler.dart';

import 'package:go_pool/theme/colors.dart';

class MyBookingContinue extends StatefulWidget {
  final String img;
  final String name;
  final bool tripPool;
  MyBookingContinue(this.img, this.name, [this.tripPool = false]);
  @override
  _MyBookingContinueState createState() => _MyBookingContinueState();
}

class _MyBookingContinueState extends State<MyBookingContinue> {
  bool riideRoute = false;
  bool poolerDetails = false;
  late bool tripPoolinfo;
  double iconSize = 10;

  @override
  void initState() {
    tripPoolinfo = widget.tripPool;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "assets/map_2.png",
              fit: BoxFit.cover,
            ),
          ),
          tripPoolinfo
              ? riideRoute
                  ? rideRoute(context)
                  : offerRide(context)
              : Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    FadedSlideAnimation(
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 370,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    locale!.rideStartson! +
                                        " 02 Sept, 10:30 am",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                            fontSize: 13.5,
                                            fontWeight: FontWeight.bold),
                                  ),
                                  Icon(
                                    Icons.more_vert,
                                    color: Colors.grey,
                                    size: 17,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.directions_walk,
                                    color: Colors.grey[400],
                                    size: 10,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text("520m " + locale.toPickupPoint!,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(
                                              color: Colors.grey[300],
                                              fontSize: 11)),
                                ],
                              ),
                              Icon(
                                Icons.more_vert,
                                color: Colors.grey[400],
                                size: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.circle,
                                    color: primaryColor,
                                    size: 10,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text("Hamilton Bridge",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(fontSize: 13.5)),
                                  Spacer(),
                                  Text("9:58 am",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(fontSize: 13.5))
                                ],
                              ),
                              Icon(
                                Icons.more_vert,
                                color: Colors.grey[400],
                                size: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.drive_eta,
                                    color: Colors.grey[400],
                                    size: 10,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text("42.3km " + locale.drive!,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(
                                              color: Colors.grey[300],
                                              fontSize: 11)),
                                ],
                              ),
                              Icon(
                                Icons.more_vert,
                                color: Colors.grey[400],
                                size: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.red,
                                    size: 10,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text("World Trade Point",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(fontSize: 13.5)),
                                  Spacer(),
                                  Text("9:58 am",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(fontSize: 13.5))
                                ],
                              ),
                              Icon(
                                Icons.more_vert,
                                color: Colors.grey[400],
                                size: 10,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(locale.fromDropPoint!,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(
                                              color: Colors.grey[600],
                                              fontSize: 11)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      beginOffset: Offset(0, 0.4),
                      endOffset: Offset(0, 0),
                      slideCurve: Curves.linearToEaseOut,
                    ),
                    FadedSlideAnimation(
                      SingleChildScrollView(
                        child: Container(
                          margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height - 210),
                          width: MediaQuery.of(context).size.width,
                          height: 500,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey[200]!,
                                    offset: Offset(0, 0.3),
                                    blurRadius: 10,
                                    spreadRadius: 7)
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20))),
                          child: ListView(
                            physics: NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.zero,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 150),
                                child: Divider(
                                  color: Colors.grey[300],
                                  thickness: 5,
                                ),
                              ),
                              // ListTile(
                              //   onTap: () {
                              //     setState(() {
                              //       poolerDetails = !poolerDetails;
                              //     });
                              //   },
                              //   // leading: Container(
                              //   //   height: 50,
                              //   //   child: Image.asset(widget.img),
                              //   // ),
                              //   // title: Row(
                              //   //   children: [
                              //   //     Text(
                              //   //       widget.name,
                              //   //       style: Theme.of(context)
                              //   //           .textTheme
                              //   //           .bodyText1!
                              //   //           .copyWith(fontSize: 15),
                              //   //     ),
                              //   //     Spacer(),
                              //   //     Text(
                              //   //       "\INR 850",
                              //   //       style: Theme.of(context)
                              //   //           .textTheme
                              //   //           .bodyText1!
                              //   //           .copyWith(fontSize: 15),
                              //   //     )
                              //   //   ],
                              //   // ),
                              //   // subtitle: Row(
                              //   //   children: [
                              //   //     Icon(
                              //   //       Icons.verified_user,
                              //   //       size: iconSize,
                              //   //       color: primaryColor,
                              //   //     ),
                              //   //     SizedBox(
                              //   //       width: 5,
                              //   //     ),
                              //   //     Text(
                              //   //       "Verified User",
                              //   //       style: TextStyle(
                              //   //           fontSize: 10,
                              //   //           color: Color(0xffa8aeb2)),
                              //   //     ),
                              //   //     Spacer(),
                              //   //     Row(
                              //   //       children: [
                              //   //         Icon(
                              //   //           Icons.directions_bike,
                              //   //           size: iconSize,
                              //   //           color: Color(0xffa8aeb2),
                              //   //         ),
                              //   //         Padding(
                              //   //           padding: const EdgeInsets.symmetric(
                              //   //               horizontal: 4),
                              //   //           child: Icon(
                              //   //             Icons.circle,
                              //   //             size: 4,
                              //   //             color: Color(0xffa8aeb2),
                              //   //           ),
                              //   //         ),
                              //   //         Icon(
                              //   //           Icons.account_circle,
                              //   //           size: iconSize,
                              //   //           color: Color(0xffa8aeb2),
                              //   //         ),
                              //   //         Icon(
                              //   //           Icons.account_circle,
                              //   //           size: iconSize,
                              //   //           color: Color(0xffa8aeb2),
                              //   //         ),
                              //   //         Icon(
                              //   //           Icons.account_circle,
                              //   //           size: iconSize,
                              //   //           color: Color(0xffa8aeb2),
                              //   //         )
                              //   //       ],
                              //   //     )
                              //   //   ],
                              //   // ),
                              // ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 10),
                                    child: Text(
                                      locale.copassengers!,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(
                                              fontSize: 13.5,
                                              color: Color(0xffb3b3b3)),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          child: Column(
                                            children: [
                                              CircleAvatar(
                                                backgroundImage: AssetImage(
                                                    "assets/profiles/img1.png"),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                "Samiksha Tiwari",
                                                textAlign: TextAlign.center,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1!
                                                    .copyWith(fontSize: 10),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          child: Column(
                                            children: [
                                              CircleAvatar(
                                                child: Icon(
                                                  Icons.account_circle,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                "Empty \nSeat",
                                                textAlign: TextAlign.center,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText2!
                                                    .copyWith(
                                                        fontSize: 10,
                                                        color:
                                                            Colors.grey[300]),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          child: Column(
                                            children: [
                                              CircleAvatar(
                                                child: Icon(
                                                  Icons.account_circle,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                "Empty \nSeat",
                                                textAlign: TextAlign.center,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText2!
                                                    .copyWith(
                                                        fontSize: 10,
                                                        color:
                                                            Colors.grey[300]),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          child: Column(
                                            children: [
                                              CircleAvatar(
                                                child: Icon(
                                                  Icons.account_circle,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                "Empty \nSeat",
                                                textAlign: TextAlign.center,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText2!
                                                    .copyWith(
                                                        fontSize: 10,
                                                        color:
                                                            Colors.grey[300]),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: Divider(
                                      color: Colors.grey[200],
                                      thickness: 5,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text(
                                              'Rituraj Tripathy',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline1!
                                                  .copyWith(
                                                    fontSize: 15,
                                                  ),
                                            ),
                                            Container(
                                              height: 30,
                                              width: 150,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  width: 1,
                                                  color: Colors.grey,
                                                ),
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(5),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 5, horizontal: 5),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Icon(
                                                      Icons
                                                          .qr_code_scanner_sharp,
                                                      size: 20,
                                                    ),
                                                    Text(
                                                      'Scan QR to verify',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.directions_walk,
                                              color: Colors.grey[400],
                                              size: 10,
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                                "520m " + locale.toPickupPoint!,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1!
                                                    .copyWith(
                                                        color: Colors.grey[300],
                                                        fontSize: 11)),
                                          ],
                                        ),
                                        Icon(
                                          Icons.more_vert,
                                          color: Colors.grey[400],
                                          size: 10,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.circle,
                                              color: primaryColor,
                                              size: 10,
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text("Hamilton Bridge",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1!
                                                    .copyWith(fontSize: 13.5)),
                                            Spacer(),
                                            Text("9:58 am",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1!
                                                    .copyWith(fontSize: 13.5))
                                          ],
                                        ),
                                        Icon(
                                          Icons.more_vert,
                                          color: Colors.grey[400],
                                          size: 10,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.drive_eta,
                                              color: Colors.grey[400],
                                              size: 10,
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text("42.3km " + locale.drive!,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1!
                                                    .copyWith(
                                                        color: Colors.grey[300],
                                                        fontSize: 11)),
                                          ],
                                        ),
                                        Icon(
                                          Icons.more_vert,
                                          color: Colors.grey[400],
                                          size: 10,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.location_on,
                                              color: Colors.red,
                                              size: 10,
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text("World Trade Point",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1!
                                                    .copyWith(fontSize: 13.5)),
                                            Spacer(),
                                            Text("9:58 am",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1!
                                                    .copyWith(fontSize: 13.5))
                                          ],
                                        ),
                                        Icon(
                                          Icons.more_vert,
                                          color: Colors.grey[400],
                                          size: 10,
                                        ),
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text(locale.fromDropPoint!,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1!
                                                    .copyWith(
                                                        color: Colors.grey[600],
                                                        fontSize: 11)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )

                              // Spacer(),
                            ],
                          ),
                        ),
                      ),
                      beginOffset: Offset(0, 0.4),
                      endOffset: Offset(0, 0),
                      slideCurve: Curves.linearToEaseOut,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      color: Colors.white,
                      child: Row(
                        children: [
                          Container(
                              height: 49,
                              width: 49,
                              decoration: BoxDecoration(
                                  color: Colors.red[50],
                                  border: Border.all(
                                      color: primaryColor, width: 1.5),
                                  borderRadius: BorderRadius.circular(50)),
                              child: IconButton(
                                  icon: Icon(
                                    FontAwesomeIcons.times,
                                    color: primaryColor,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => ChatPage()));
                                  })),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                              height: 49,
                              width: 49,
                              decoration: BoxDecoration(
                                  color: Colors.green[50],
                                  border: Border.all(
                                      color: primaryColor, width: 1.5),
                                  borderRadius: BorderRadius.circular(50)),
                              child: IconButton(
                                  icon: Icon(
                                    FontAwesomeIcons.pen,
                                    color: primaryColor,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => ChatPage()));
                                  })),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            EndTripPoolTaker()));
                                // setState(() {
                                //   tripPoolinfo = true;
                                // });
                              },
                              child: FadedScaleAnimation(
                                Container(
                                  height: 53,
                                  width: double.infinity,
                                  padding: EdgeInsetsDirectional.only(
                                      end: 50, start: 25, top: 15, bottom: 15),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Theme.of(context).primaryColor),
                                  child: Center(
                                      child: Row(
                                    children: [
                                      Icon(Icons.call,
                                          size: 20, color: Colors.white),
                                      Spacer(),
                                      Text(
                                        locale.callRider!.toUpperCase(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .copyWith(
                                                fontSize: 16,
                                                letterSpacing: 2,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )),
                                ),
                                durationInMilliseconds: 600,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
          riideRoute
              ? Positioned(
                  right: 30,
                  bottom: 320,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EndTripPooler()));
                    },
                    child: FadedScaleAnimation(
                      Container(
                        height: 40,
                        width: 180,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Theme.of(context).primaryColor),
                        child: Center(
                            child: Row(
                          children: [
                            Icon(Icons.navigation,
                                size: 18, color: Colors.white),
                            Spacer(),
                            Text(
                              locale!.direction!.toUpperCase(),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      fontSize: 15,
                                      letterSpacing: 2,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                            ),
                          ],
                        )),
                      ),
                      durationInMilliseconds: 600,
                    ),
                  ),
                )
              : SizedBox.shrink(),
        ],
      ),
    );
  }

  Widget offerRide(BuildContext context) {
    var locale = AppLocalizations.of(context)!;
    return FadedSlideAnimation(
      Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        height: 300,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  locale.rideStartson! + "25 Jun, 10:30 am",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 13.5, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(
                  Icons.more_vert,
                  color: Colors.grey,
                )
              ],
            ),
            Spacer(),
            Row(
              children: [
                Icon(
                  Icons.circle,
                  color: Colors.green,
                  size: 13,
                ),
                SizedBox(
                  width: 15,
                ),
                Text("1024, Central Park, Hemilton, New York",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 13.5)),
              ],
            ),
            Spacer(),
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.red,
                  size: 13,
                ),
                SizedBox(
                  width: 15,
                ),
                Text("M141, Food Center, Hemilton, Illinois",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 13.5)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Text(
                    locale.copassengers!,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 13.5, color: Color(0xffb3b3b3)),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/profiles/img1.png"),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Samantha \nSmith",
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontSize: 10),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        CircleAvatar(
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Empty \nSeat",
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(fontSize: 10),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        CircleAvatar(
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Empty \nSeat",
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(fontSize: 10),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        CircleAvatar(
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Empty \nSeat",
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(fontSize: 10),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Spacer(),
            GestureDetector(
                onTap: () {
                  setState(() {
                    riideRoute = true;
                  });
                },
                child: FadedScaleAnimation(
                  ColorButton(locale.startRide),
                  durationInMilliseconds: 600,
                ))
          ],
        ),
      ),
      beginOffset: Offset(0, 0.4),
      endOffset: Offset(0, 0),
      slideCurve: Curves.linearToEaseOut,
    );
  }
}

Widget rideRoute(BuildContext context) {
  var locale = AppLocalizations.of(context)!;
  return FadedSlideAnimation(
    Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      height: 340,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    locale.rideRoute!,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 13.5),
                  ),
                ],
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: Text(locale.startRide!,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(fontSize: 12)),
              ),
              Row(
                children: [
                  Icon(
                    Icons.circle,
                    color: Colors.green,
                    size: 13,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text("1024, Central Park, Hemilton, New York",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 12)),
                ],
              ),
              Icon(
                Icons.more_vert,
                size: 13,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: Row(
                  children: [
                    Text(locale.pickup!,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(fontSize: 12)),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Samantha Saint",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(fontSize: 12, color: primaryColor)),
                  ],
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.arrow_upward,
                    color: Colors.green,
                    size: 13,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text("Hemilton Bridge, New York",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 12)),
                ],
              ),
              Icon(
                Icons.more_vert,
                size: 13,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: Row(
                  children: [
                    Text(locale.pickup!,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(fontSize: 12)),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Peter Taylor",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(fontSize: 12, color: primaryColor)),
                  ],
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.arrow_upward,
                    color: Colors.green,
                    size: 13,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text("City Parle Park, Hemilton, New York",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 12)),
                ],
              ),
              Icon(
                Icons.more_vert,
                size: 13,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: Row(
                  children: [
                    Text(locale.drop!,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(fontSize: 12)),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Peter Taylor",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(fontSize: 12, color: primaryColor)),
                  ],
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.arrow_downward,
                    color: Colors.red,
                    size: 13,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text("1024, Central Park, Hemilton, New York",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 12)),
                ],
              ),
              Icon(
                Icons.more_vert,
                size: 13,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: Row(
                  children: [
                    Text(locale.drop!,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(fontSize: 12)),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Samantha Smith",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(fontSize: 12, color: primaryColor)),
                  ],
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.arrow_downward,
                    color: Colors.red,
                    size: 13,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text("Golden Street, New York",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 12)),
                ],
              ),
              Icon(
                Icons.more_vert,
                size: 13,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: Row(
                  children: [
                    Text(locale.endTrip!,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(fontSize: 12)),
                  ],
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.red,
                    size: 13,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text("M141, Food Center, Hemilton, Illinois",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 12)),
                ],
              ),
              Spacer(),
            ],
          ),
        ],
      ),
    ),
    beginOffset: Offset(0, 0.4),
    endOffset: Offset(0, 0),
    slideCurve: Curves.linearToEaseOut,
  );
}
