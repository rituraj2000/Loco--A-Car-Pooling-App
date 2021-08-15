import 'package:animation_wrappers/Animations/faded_slide_animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_pool/language/locale.dart';
import 'package:go_pool/screens/home/myTrips/poolerInfo.dart';
import 'package:go_pool/theme/colors.dart';

import 'mybookingContinue.dart';

class MyBookings extends StatelessWidget {
  final List imgs = [
    "assets/profiles/img1.png",
    "assets/profiles/img2.png",
    "assets/profiles/img3.png",
    "assets/profiles/img4.png",
    "assets/profiles/img5.png"
  ];
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          locale.myTrips!,
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.history,
                color: Colors.grey[300],
                size: 17,
              ),
              onPressed: () {})
        ],
      ),
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
            color: backgroundColor, borderRadius: BorderRadius.circular(15)),
        child: FadedSlideAnimation(
          ListView.builder(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyBookingContinue(
                              imgs[0], "Rituraj Tripathy", false)));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("${index + 1}:30 am",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(fontSize: 13.5)),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.drive_eta,
                                    size: 13,
                                    color: Colors.grey[300],
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("23 March, 2021",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2!
                                          .copyWith(fontSize: 10))
                                ],
                              )
                            ],
                          ),
                          Spacer(),
                          // index == 1 || index == 3
                          //     ? Row(
                          //         children: [
                          //           CircleAvatar(
                          //             radius: 15,
                          //             backgroundImage:
                          //                 AssetImage(imgs[index == 1 ? 0 : 2]),
                          //           ),
                          //           SizedBox(
                          //             width: 5,
                          //           ),
                          //           CircleAvatar(
                          //             radius: 15,
                          //             backgroundImage:
                          //                 AssetImage(imgs[index == 1 ? 1 : 3]),
                          //           ),
                          //           SizedBox(
                          //             width: 5,
                          //           ),
                          //           CircleAvatar(
                          //             radius: 15,
                          //             backgroundImage: AssetImage(imgs[0]),
                          //           ),
                          //         ],
                          //       )
                          //     : SizedBox.shrink(),

                          //TODO Learn this widget

                          SizedBox(
                            width: 5,
                          ),
                          Stack(
                            alignment: Alignment.topRight,
                            children: [
                              CircleAvatar(
                                backgroundColor: Color(0xffd9e3ea),
                                radius: 15,
                                child: Icon(
                                  index % 2 == 0
                                      ? Icons.drive_eta
                                      : Icons.account_circle,
                                  color: Colors.white,
                                  size: 17,
                                ),
                              ),
                              Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(30)),
                                child: Center(
                                  child: Text(
                                    "2",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 8),
                                  ),
                                ),
                              )
                            ],
                          ), //TODO

                          // TODO Learn this widget
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: Icon(
                              Icons.circle,
                              color: Colors.grey[300],
                              size: 5,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Hamilton Bridge, New York",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(fontSize: 10)),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 1),
                        child: Icon(
                          Icons.more_vert,
                          color: Colors.grey[400],
                          size: 10,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.grey[300],
                            size: 12,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Trade Bridge, New York",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(fontSize: 10)),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          beginOffset: Offset(0.4, 0),
          endOffset: Offset(0, 0),
          slideCurve: Curves.linearToEaseOut,
        ),
      ),
    );
  }
}
