import 'package:animation_wrappers/Animations/faded_slide_animation.dart';
import 'package:flutter/material.dart';
import 'package:go_pool/language/locale.dart';
import 'package:go_pool/screens/home/home/poolerInfo.dart';
import 'package:go_pool/theme/colors.dart';

class RideProviders extends StatelessWidget {
  final bool isFindPool;
  RideProviders(this.isFindPool);
  final double iconSize = 10;
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);

    List imgs = [
      "assets/profiles/img1.png",
      "assets/profiles/img2.png",
      "assets/profiles/img3.png",
      "assets/profiles/img4.png",
      "assets/profiles/img1.png",
      "assets/profiles/img2.png",
      "assets/profiles/img3.png",
      "assets/profiles/img4.png",
    ];
    List names = [
      "Suurya Prabhat",
      "Yash Kuashik",
      "Agni Banerji",
      "Samiksha Tiwari",
      "Deepak Soni",
      "Satyendra Kumar",
      "Nupur Yadav",
      "Jaidev Balla",
    ];
    List from = [
      "User Verified",
      "User Verified",
      "User Verified",
      "User Verified",
      "User Verified",
      "User Verified",
      "User Verified",
      "User Verified",
    ];
    List price = [
      "\₹850",
      "\₹875",
      "\₹885",
      "\₹890",
      "\₹910",
      "\₹960",
      "\₹1250",
      "\₹1450",
    ];

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          isFindPool
              ? locale!.poolers! + " on 02 Sept, 10:30 am"
              : locale!.pooltaker! + " on 02 Sept, 10:30 am",
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: FadedSlideAnimation(
          ListView.builder(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            itemCount: 8,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PoolerInfo(
                              imgs[index], names[index], isFindPool)));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 7, vertical: 10),
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15)),
                            child: Image.asset(imgs[index]),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            height: 15,
                            width: 35,
                            decoration: BoxDecoration(
                                color: Colors.green[800],
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: iconSize,
                                  color: Colors.amber,
                                ),
                                Text(
                                  "4.5",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 8),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      // Spacer(),
                      Expanded(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  names[index],
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(fontSize: 13.5),
                                ),
                                Spacer(),
                                Text(
                                  price[index],
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(fontSize: 13.5),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.verified_user,
                                  size: iconSize,
                                  color: Colors.green[800],
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  from[index],
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                          fontSize: 10,
                                          color: Color(0xffa8aeb2)),
                                ),
                                Spacer(),
                                Row(
                                  children: [
                                    Icon(
                                      index == 2
                                          ? Icons.directions_bike
                                          : Icons.drive_eta,
                                      size: iconSize,
                                      color: Colors.grey[300],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 3),
                                      child: Icon(
                                        Icons.circle,
                                        size: 3,
                                        color: Colors.grey[300],
                                      ),
                                    ),
                                    index != 2
                                        ? Icon(
                                            Icons.account_circle,
                                            size: iconSize,
                                            color: Colors.grey[300],
                                          )
                                        : SizedBox.shrink(),
                                    Icon(
                                      Icons.account_circle,
                                      size: iconSize,
                                      color: Colors.grey[300],
                                    ),
                                    Icon(
                                      Icons.account_circle,
                                      size: iconSize,
                                      color: Colors.grey[300],
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4),
                                      child: Icon(
                                        Icons.circle,
                                        size: 4,
                                        color: Colors.grey[300],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Expanded(
                                      child: Text(
                                        "Rd No:1, Banjara hills, Hyderabad",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 10),
                                      ),
                                    ),
                                    // Spacer(),
                                    Text(
                                      "9.58 am",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 10),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.194,
                                    ),
                                    Icon(
                                      Icons.more_vert,
                                      size: iconSize,
                                      color: Colors.grey[300],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.keyboard_arrow_down,
                                      size: iconSize,
                                      color: Colors.grey[300],
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Expanded(
                                      child: Text(
                                        "Gajuwaka Bus Station,Vizag",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 10),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    // Spacer(),
                                    Text(
                                      "20.35 pm",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 10),
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      )
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
