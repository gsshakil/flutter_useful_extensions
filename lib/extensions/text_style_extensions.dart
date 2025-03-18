import 'package:flutter/material.dart';

/// Extension on [TextStyle] to apply quick style changes.
extension TextStyleExtensions on TextStyle {
  /// Returns a copy with italic style.
  TextStyle italic() => copyWith(fontStyle: FontStyle.italic);

  /// Returns a copy with bold weight (default weight is 600).
  TextStyle bold({FontWeight? weight}) =>
      copyWith(fontWeight: weight ?? FontWeight.w600);

  /// Returns a copy with semi-bold weight (500).
  TextStyle semiBold() => copyWith(fontWeight: FontWeight.w500);

  /// Returns a copy with updated font size.
  TextStyle size(double size) => copyWith(fontSize: size);

  /// Returns a copy with a specified color.
  TextStyle withColor(Color color) => copyWith(color: color);
}
