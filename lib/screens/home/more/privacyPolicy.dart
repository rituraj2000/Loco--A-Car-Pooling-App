import 'package:animation_wrappers/Animations/faded_scale_animation.dart';
import 'package:animation_wrappers/Animations/faded_slide_animation.dart';
import 'package:flutter/material.dart';
import 'package:go_pool/language/locale.dart';
import 'package:go_pool/theme/colors.dart';

class PrivacyPolicy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundColor,
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color: backgroundColor,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      locale.privacyPolicy!,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 22),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text(
                        locale.howWeWork!,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                Spacer(),
                Expanded(
                  flex: 5,
                  child: FadedScaleAnimation(
                    Container(
                      child: Image.asset("assets/head_privacypolicy.png"),
                    ),
                    durationInMilliseconds: 600,
                  ),
                )
              ],
            ),
          ),
          FadedSlideAnimation(
            Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.7,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: ListView(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      locale.termsOfUse!,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 15),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(locale.lorem!,
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 13.5,
                            height: 1.7,
                            fontWeight: FontWeight.normal)),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      locale.privacyPolicy!,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 15),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(locale.lorem!,
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 13.5,
                            height: 1.7,
                            fontWeight: FontWeight.normal)),
                    Text(locale.lorem!,
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 13.5,
                            height: 1.7,
                            fontWeight: FontWeight.normal))
                  ],
                )),
            beginOffset: Offset(0, 0.4),
            endOffset: Offset(0, 0),
            slideCurve: Curves.linearToEaseOut,
          )
        ],
      ),
    );
  }
}
