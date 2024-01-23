import 'package:flutter/material.dart';

class HoverProvider extends ChangeNotifier {
  bool _isHovered = false;
  set mouseEnter(bool isHovered) {
    _isHovered = isHovered;
    notifyListeners();
  }

  bool get mouseEnter => _isHovered;
}
