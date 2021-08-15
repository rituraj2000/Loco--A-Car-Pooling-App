import 'package:animation_wrappers/Animations/faded_scale_animation.dart';
import 'package:flutter/material.dart';
import 'package:go_pool/components/widgets/colorButton.dart';
import 'package:go_pool/components/widgets/textField.dart';
import 'package:go_pool/language/locale.dart';
import 'package:go_pool/theme/colors.dart';

import 'login_interactor.dart';

class Login extends StatefulWidget {
  final LoginInteractor loginInteractor;

  Login(this.loginInteractor);
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context)!;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                color: primaryColor,
                // height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Spacer(),
                    FadedScaleAnimation(
                      Container(
                        height: 50,
                        child: Image.asset("assets/lcw.png"),
                      ),
                      durationInMilliseconds: 600,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset("assets/img-foot.png"),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.5,
                    )
                  ],
                ),
              ),
              Container(
                height: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            locale.signInNow!,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(fontSize: 15),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          EntryField(locale.phoneNumber,
                              locale.enterMobileNumber, false),
                          SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                              onTap: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => Register()));
                                widget.loginInteractor
                                    .loginWithPhone('isoCode', 'mobileNumber');
                              },
                              child: FadedScaleAnimation(
                                ColorButton(locale.continuee),
                                durationInMilliseconds: 600,
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
