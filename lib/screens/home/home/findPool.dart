import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:go_pool/components/widgets/colorButton.dart';
import 'package:go_pool/components/widgets/entry_field.dart';
import 'package:go_pool/language/locale.dart';
import 'package:go_pool/screens/home/more/preference.dart';
import 'package:go_pool/screens/home/riderProviders.dart';
import 'package:go_pool/theme/colors.dart';

import 'numberpicker.dart';

class FindPool extends StatefulWidget {
  bool isFindPool;

  FindPool(this.isFindPool);

  @override
  _FindPoolState createState() => _FindPoolState();
}

class _FindPoolState extends State<FindPool> {
  List days = ['MO', 'TU', 'WE', 'TH', 'FR', 'SA', 'SU'];
  List<String> seats = [
    "1 Seat",
    "2 Seat",
    "3 Seat",
    "4 Seat",
  ];
  List<String> cars = [
    "Hatchback",
    "Sedan",
    "SUV",
    "4x4",
  ];
  int dayIndex = 0;
  String? seat = '1 Seat';
  String? car = 'Hatchback';

  int currentIndex = -1;

  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context)!;

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
          FadedSlideAnimation(
            Container(
              width: MediaQuery.of(context).size.width,
              height: 312,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    TextEntryField(
                      prefixIcon: Icon(
                        Icons.circle,
                        color: primaryColor,
                        size: 17,
                      ),
                      initialValue: "3-11/210, VD Residency, Hyderabad",
                    ),
                    TextEntryField(
                      prefixIcon: Icon(
                        Icons.location_on,
                        color: Colors.red,
                        size: 17,
                      ),
                      initialValue: "M141, Food Center, Gajuwaka, Vizag",
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Passenger Number',
                        ),
                        Container(
                          height: 35,
                          child: ListView.builder(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: 5,
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    currentIndex = index;
                                  });
                                },
                                child: FadedScaleAnimation(
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    width: 35,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: currentIndex == index
                                            ? Colors.grey[300]
                                            : backgroundColor),
                                    child: Center(
                                      child: Text((index + 1).toString(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .copyWith(fontSize: 13)),
                                    ),
                                  ),
                                  durationInMilliseconds: 600,
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            beginOffset: Offset(0, 0.6),
            endOffset: Offset(0, 0),
            slideCurve: Curves.linearToEaseOut,
          ),
          FadedSlideAnimation(
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 50),
                  width: MediaQuery.of(context).size.width,
                  height: 75,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 50,
                        width: 320,
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(50)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  widget.isFindPool = true;

                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return Preferences();
                                  }));
                                });
                              },
                              child: Container(
                                height: 50,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: widget.isFindPool
                                        ? Colors.white
                                        : Colors.transparent,
                                    border: Border.all(
                                      width: 2,
                                      color: Colors.white,
                                    ),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Center(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.drive_eta,
                                        color: !widget.isFindPool
                                            ? Colors.white
                                            : primaryColor,
                                        size: 20,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Going Now',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .copyWith(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 13,
                                                color: widget.isFindPool
                                                    ? Color(0xff4d4d4d)
                                                    : Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  widget.isFindPool = false;

                                  showModalBottomSheet(
                                    context: context,
                                    builder: (context) => BottomDatePicker(),
                                  );
                                });
                              },
                              child: Container(
                                height: 50,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: widget.isFindPool
                                        ? Colors.transparent
                                        : Colors.white,
                                    border: Border.all(
                                      width: 2,
                                      color: Colors.white,
                                    ),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Center(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.escalator_warning_outlined,
                                        color: widget.isFindPool
                                            ? Colors.white
                                            : primaryColor,
                                        size: 20,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Going Later',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .copyWith(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w600,
                                                color: !widget.isFindPool
                                                    ? Color(0xff4d4d4d)
                                                    : Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            beginOffset: Offset(0, 0.4),
            endOffset: Offset(0, 0),
            slideCurve: Curves.linearToEaseOut,
          ),
        ],
      ),
    );
  }
}
