import 'package:flutter/material.dart';

/// Extension on [BuildContext] to provide quick access to common properties.
extension BuildContextExtensions on BuildContext {
  /// Returns the height of the status bar.
  double get statusBarHeight => MediaQuery.of(this).padding.top;

  /// Returns the height of the bottom navigation bar (or safe area).
  double get bottomBarHeight => MediaQuery.of(this).padding.bottom;

  /// Returns the current [TextTheme] for the context.
  TextTheme get textTheme => Theme.of(this).textTheme;

  /// Returns the current [ColorScheme] for the context.
  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  /// Returns the full screen [Size].
  Size get screenSize => MediaQuery.of(this).size;

  /// Returns the screen width.
  double get screenWidth => screenSize.width;

  /// Returns the screen height.
  double get screenHeight => screenSize.height;

  /// Returns `true` if the current theme is dark mode.
  bool get isDarkMode =>
      MediaQuery.of(this).platformBrightness == Brightness.dark;
}
