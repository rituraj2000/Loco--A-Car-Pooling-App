import 'package:flutter/material.dart';

import 'verification.dart';
import 'verification_interator.dart';

class VerificationPage extends StatefulWidget {
  final VoidCallback onVerificationDone;

  VerificationPage(this.onVerificationDone);

  @override
  _VerificationPageState createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage>
    implements VerificationInteractor {
  @override
  Widget build(BuildContext context) {
    return Verification(this);
  }

  @override
  void verificationDone() {
    widget.onVerificationDone();
  }

  @override
  void verifyNumber() {}
}
