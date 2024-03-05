import 'package:flutter/material.dart';

class ViewPasswordChangeNortifier extends ChangeNotifier {
  bool isPasswordVisible = false;

  void togglePasswordVisiblity() {
    isPasswordVisible = !isPasswordVisible;
    notifyListeners();
  }
}
