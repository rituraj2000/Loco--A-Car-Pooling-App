import 'package:flutter/material.dart';
import 'package:go_pool/screens/auth/login/login.dart';
import '../login_navigator.dart';
import 'login_interactor.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> implements LoginInteractor {
  @override
  Widget build(BuildContext context) {
    return Login(this);
  }

  @override
  void loginWithPhone(String isoCode, String mobileNumber) {
    Navigator.pushNamed(context, LoginRoutes.registration,
        arguments: isoCode + mobileNumber);
  }


}
