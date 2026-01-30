import 'package:flutter/material.dart';

bool isMobile(BuildContext context) {
  return MediaQuery.of(context).size.width < 568;
}


class ScreenUtils {
  late double height;
  late double width;
  late double padding;

  ScreenUtils(BuildContext context) {
    final size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    padding = width * 0.05;
  }

  bool get isTablet => width >= 600 && width < 1024;
  bool get isDesktop => width >= 1024;
}
