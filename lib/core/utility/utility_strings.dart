import 'dart:math';

import 'package:flutter/material.dart';

class UtilString {
  static double largeTextScaleFactor(BuildContext context,
      {double maxTextScaleFactor = 1.2}) {
    final width = MediaQuery.of(context).size.width;
    double val = (width / 1400) * maxTextScaleFactor / 1;
    return max(.2, min(val, maxTextScaleFactor));
  }

  static double paragphTextScaleFactor(BuildContext context,
      {double maxTextScaleFactor = 1.2}) {
    final width = MediaQuery.of(context).size.width;
    double val = (width / 1400) * maxTextScaleFactor / .8;
    return max(.2, min(val, maxTextScaleFactor));
  }
}
