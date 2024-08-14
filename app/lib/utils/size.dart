import 'package:flutter/material.dart';

class DeviceSize {
  static bool isTabletDevice(BuildContext context) {
    final data = MediaQuery.of(context);
    return data.size.shortestSide >= 600;
  }
}
