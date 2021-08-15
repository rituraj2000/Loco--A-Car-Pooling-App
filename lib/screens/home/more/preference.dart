import 'package:animation_wrappers/animation_wrappers.dart';

import 'package:go_pool/components/widgets/colorButton.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_pool/language/locale.dart';
import 'package:go_pool/screens/home/more/changeLanguage.dart';
import 'package:go_pool/screens/home/more/faq.dart';
import 'package:go_pool/screens/home/more/manageAddress.dart';
import 'package:go_pool/screens/home/more/myVehicles.dart';
import 'package:go_pool/screens/home/more/privacyPolicy.dart';
import 'package:go_pool/screens/home/more/proceedToPay.dart';
import 'package:go_pool/screens/home/more/profile.dart';
import 'package:go_pool/screens/home/more/support.dart';
import 'package:go_pool/screens/home/more/wallet.dart';
import 'package:go_pool/theme/colors.dart';

class Preferences extends StatelessWidget {
  final List icons = [
    FontAwesomeIcons.bolt,
    FontAwesomeIcons.venus,
    FontAwesomeIcons.smokingBan,
    FontAwesomeIcons.dog,
  ];

  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context)!;

    List title = [
      'Quite Ride',
      'Ladies Only',
      'Smoking',
      'Pet Friendly',
    ];

    return Scaffold(
        backgroundColor: backgroundColor,
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SafeArea(
              child: ListView(
                // alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: 180,
                    width: MediaQuery.of(context).size.width,
                    color: backgroundColor,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Personalise Your Ride',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontSize: 17),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyProfile()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Suurya Prabhat",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(fontSize: 20),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.verified_user,
                                          color: primaryColor,
                                          size: 20,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text("Verified User")
                                      ],
                                    )
                                  ],
                                ),
                                Spacer(),
                                FadedScaleAnimation(
                                  Container(
                                    width: 60,
                                    child:
                                        Image.asset("assets/profiles/img1.png"),
                                  ),
                                  durationInMilliseconds: 600,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  FadedSlideAnimation(
                    Container(
                      width: MediaQuery.of(context).size.width,
                      // height: 320,
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
                            child: ListTile(
                              contentPadding:
                                  EdgeInsets.only(left: 26, right: 20),
                              horizontalTitleGap: 0,
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MyProfile(),
                                    ));
                              },
                              leading: Icon(
                                Icons.account_balance_wallet,
                                color: Colors.white,
                                size: 20,
                              ),
                              title: Row(
                                children: [
                                  Text(
                                    locale.wallet!,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                            color: Colors.white, fontSize: 14),
                                  ),
                                  Spacer(),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.chevron_right,
                                        size: 25,
                                        color: Colors.white,
                                      )
                                    ],
                                  )
                                ],
                              ),
                              subtitle: Text(
                                locale.quickPayments!,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                        color: Colors.white, fontSize: 12),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          FadedSlideAnimation(
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height - 300,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                              ),
                              child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                itemCount: 4,
                                itemBuilder: (BuildContext context, int index) {
                                  return ListTile(
                                    horizontalTitleGap: 0,
                                    leading: Padding(
                                      padding: const EdgeInsets.only(top: 3),
                                      child: Icon(
                                        icons[index],
                                        size: 20,
                                        color: primaryColor,
                                      ),
                                    ),
                                    title: Row(
                                      children: [
                                        Text(
                                          title[index],
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .copyWith(
                                                  color: Colors.black,
                                                  fontSize: 13.5),
                                        ),
                                        Spacer(),
                                        Switch(
                                            value: false, onChanged: (value) {})
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                            beginOffset: Offset(0, 0.4),
                            endOffset: Offset(0, 0),
                            slideCurve: Curves.linearToEaseOut,
                          ),
                        ],
                      ),
                    ),
                    beginOffset: Offset(0, 0.4),
                    endOffset: Offset(0, 0),
                    slideCurve: Curves.linearToEaseOut,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return ProceedtoPay();
                      }),
                    );
                  },
                  child: Container(
                      height: 55,
                      child: FadedScaleAnimation(
                        ColorButton(locale.continuee),
                        durationInMilliseconds: 600,
                      ))),
            ),
          ],
        ));
  }
}
