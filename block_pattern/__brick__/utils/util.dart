import 'package:intl/intl.dart';
import 'dart:io';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class Util{

  void exitFromApp() {
    try {
      if (Platform.isAndroid) {
        SystemNavigator.pop();
      } else if (Platform.isIOS) {
        exit(0);
      }
    } catch (e) {
      log("catch-----------------> ", error: "$e");
    }
  }

  Future<String> getFirebaseToken() async {
    return await FirebaseMessaging.instance.getToken() ?? "";
  }

  /// required shared preferences plugin to work
  Future<LoginData> getLoginUser() async {
    var data = await SP.getObj(SP.userObj);
    LoginData loginData = LoginData.fromJson(data);
    return loginData;
  }


  String formatDuration(int totalSeconds) {
    final duration = Duration(seconds: totalSeconds);
    final minutes = duration.inMinutes;
    final seconds = totalSeconds % 60;
    final minutesString = '$minutes'.padLeft(2, '0');
    final secondsString = '$seconds'.padLeft(2, '0');
    return '$minutesString:$secondsString';
  }

  String formatDate(String date, String format, String expectFormat) {
    if (date.isEmpty || date.toLowerCase() == 'null') return 'N/A';
    DateTime parse = DateFormat(format).parse(date);
    return DateFormat(expectFormat).format(parse);
  }

  String getTodayDate(String format) {
    return DateFormat(format).format(DateTime.now());
  }

  DateTime stringToDateTime(String date, String format) {
    DateTime parse = DateFormat(format).parse(date);
    return parse;
  }

  Future<bool> checkNetwork() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      return true;
    } else {
      return false;
    }
  }

  String timeFormat(int time) {
    if (time >= 0 && time <= 9) {
      return '0$time';
    } else {
      return '$time';
    }
  }

/// need intl package in pubspec.yaml to use   intl: ^0.17.0
/// https://pub.dev/packages/intl/versions/0.17.0-nullsafety.2

  bool getTimeDiff(String date) {
    DateTime parse = DateFormat("yyyy-MM-dd hh:mm:ss").parse(date);
    parse.add(const Duration(seconds: 15));
    return DateTime.now().isBefore(parse);
  }

  DateTime findFirstDateOfTheWeek(DateTime dateTime) {
    return dateTime.subtract(Duration(days: dateTime.weekday - 1));
  }

  DateTime findLastDateOfTheWeek(DateTime dateTime) {
    return dateTime
        .add(Duration(days: DateTime.daysPerWeek - dateTime.weekday));
  }

}