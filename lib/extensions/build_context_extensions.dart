import 'package:flutter/material.dart';

extension BuildContextExtensions on BuildContext {
  Size get screenSize => MediaQuery.of(this).size;
  double get screenWidth => screenSize.width;
  double get screenHeight => screenSize.height;
  bool get isDarkMode =>
      MediaQuery.of(this).platformBrightness == Brightness.dark;
}
