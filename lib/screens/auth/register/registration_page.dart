import 'package:flutter/material.dart';
import 'package:go_pool/screens/auth/register/register.dart';
import '../login_navigator.dart';
import 'registration_interactor.dart';

class RegistrationPage extends StatefulWidget {
  final String? phoneNumber;

  RegistrationPage(this.phoneNumber);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage>
    implements RegistrationInteractor {
  @override
  Widget build(BuildContext context) {
    return Register(this, widget.phoneNumber);
  }

  @override
  void register(String phoneNumber, String name, String email) {
    Navigator.pushNamed(context, LoginRoutes.verification);
  }

  @override
  void goBack() {
    Navigator.pop(context);
  }
}
