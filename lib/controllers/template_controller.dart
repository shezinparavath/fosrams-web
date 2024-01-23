import 'package:flutter/material.dart';

class TemplateController extends ChangeNotifier {
  final Map<int, bool> _isDroppedDown = {};

  void triggerDropDown(int index) {
    // Uncheck all checkboxes first
    _isDroppedDown.forEach((key, value) {
      if (key != index) {
        _isDroppedDown[key] = false;
      }
    });

    // Check the selected checkbox

    if (_isDroppedDown.containsKey(index)) {
      _isDroppedDown[index] = !_isDroppedDown[index]!;
    } else {
      _isDroppedDown[index] = true;
    }
    notifyListeners();
  }

  bool droppedDown(int index) {
    return _isDroppedDown[index] ?? false;
  }
}
