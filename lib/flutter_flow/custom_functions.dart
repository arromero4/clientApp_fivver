import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

List<DateTime> newCustomFunction(
  DateTime openHour,
  DateTime closeHour,
) {
  List<DateTime> hours = [];

  DateTime currentHour = DateTime(
    openHour.year,
    openHour.month,
    openHour.day,
    openHour.hour,
  );

  while (currentHour.isBefore(closeHour)) {
    hours.add(currentHour);
    currentHour = currentHour.add(Duration(hours: 1));
  }
  return hours;
}

DateTime newCustomFunction2(String hora) {
  // passing a string of type 08:00 return it date time
  final now = DateTime.now();
  final hourAndMinute = hora.split(':');
  final hour = int.parse(hourAndMinute[0]);
  final minute = int.parse(hourAndMinute[1]);
  return DateTime(now.year, now.month, now.day, hour, minute);
}
