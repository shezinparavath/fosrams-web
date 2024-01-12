import 'package:flutter/material.dart';

class TextFieldController extends ChangeNotifier {
  bool _obscure = true;
  bool get isObscure => _obscure;
  set setObscure(bool value) {
    _obscure = value;
    notifyListeners();
  }

  triggerObscure() {
    _obscure = !_obscure;
    notifyListeners();
  }
}
