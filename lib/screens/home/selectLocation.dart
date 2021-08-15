import 'package:animation_wrappers/Animations/faded_slide_animation.dart';
import 'package:flutter/material.dart';
import 'package:go_pool/components/widgets/entry_field.dart';
import 'package:go_pool/language/locale.dart';
import 'package:go_pool/screens/home/home/findPool.dart';
import 'package:go_pool/theme/colors.dart';

class SelectLocation extends StatelessWidget {
  final List icons = [
    Icons.history,
    Icons.history,
    Icons.history,
  ];
  final List title = [
    "Visakhapatnam",
    "Vijayawada",
    "Pune",
  ];
  final String address = "Gajuwaka Bus Station, Vizag";

  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          locale.selectLocation!,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      body: FadedSlideAnimation(
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              TextEntryField(
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 19,
                ),
                hint: locale.enterLocation,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 15),
                child: Row(
                  children: [
                    Icon(
                      Icons.pin_drop,
                      color: primaryColor,
                      size: 17,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      locale.pinOnMap!,
                      style: TextStyle(color: primaryColor),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.only(top: 15),
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FindPool(true)));
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 20,
                              // width: 20,
                              child: Icon(
                                icons[index],
                                color: Colors.grey,
                                size: 17,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(title[index],
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(fontSize: 13.5)),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    address,
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xffd9e3ea)),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        beginOffset: Offset(0, 0.4),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }
}
