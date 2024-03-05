import 'package:flutter/material.dart';

class AgreeToTermsAndConditionsChangeNortifier extends ChangeNotifier {
  bool isAgreedToTCs = false;

  void setAgreementToTCs({required bool selection}) {
    isAgreedToTCs = selection;
    notifyListeners();
  }
}
