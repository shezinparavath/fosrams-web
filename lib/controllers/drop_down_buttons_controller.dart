import 'package:flutter/material.dart';

class DropDownButtonsProviders extends ChangeNotifier {
  final Map<int, bool> _onTap = {};
  set triggerButton(int index) {
    _onTap.forEach((key, value) {
      if (key != index) {
        _onTap[key] = false;
      }
    });
    if (_onTap.containsKey(index)) {
      _onTap[index] = true;
    } else {
      _onTap[index] = true;
    }
    notifyListeners();
  }

  bool onTapResponse(int index) {
    return _onTap[index] ?? false;
  }
}
