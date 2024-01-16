import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateProviders extends ChangeNotifier {
  DateTime _time = DateTime.now();
  DateTime? _fromdate;
  DateTime? _todate;

  DateProviders() {
    // Update the current time every second
    Timer.periodic(const Duration(seconds: 1), (timer) {
      _updateCurrentTime();
    });
  }

  void _updateCurrentTime() {
    _time = DateTime.now();
  }

  setFromdate(DateTime date) {
    _fromdate = date;
    notifyListeners();
  }

  setTodate(DateTime date) {
    _todate = date;
    notifyListeners();
  }

  String getCurrentTime() {
    String formattedTime = DateFormat('h:mm a').format(_time);
    return formattedTime;
  }

  String getfromDate() {
    return _fromdate != null
        ? getFormattedDate(_fromdate!)
        : getFormattedDate(DateTime.now());
  }

  String getFormattedDate(DateTime date) {
    return DateFormat('MMM dd, yyyy').format(date);
  }

  String gettoDate() {
    return _todate != null
        ? getFormattedDate(_todate!)
        : getFormattedDate(DateTime.now());
  }
}
