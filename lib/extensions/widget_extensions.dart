import 'package:flutter/material.dart';

/// Extension on [Widget] to add border, padding, and other styling helpers.
extension WidgetExtensions on Widget {
  /// Wraps the widget with a container that has a border and optional corner radius.
  Widget borderAll(Color color, {double width = 1.5, double radius = 0.0}) =>
      Container(
        decoration: BoxDecoration(
          border: Border.all(color: color, width: width),
          borderRadius: BorderRadius.circular(radius),
        ),
        child: this,
      );

  /// Adds custom padding around the widget.
  Widget padding(
          {double left = 0.0,
          double right = 0.0,
          double top = 0.0,
          double bottom = 0.0}) =>
      Padding(
        padding:
            EdgeInsets.only(left: left, right: right, top: top, bottom: bottom),
        child: this,
      );

  /// Adds equal padding on all sides.
  Widget paddingAll(double value) =>
      Padding(padding: EdgeInsets.all(value), child: this);

  /// Adds symmetric padding around the widget.
  Widget paddingSymmetric({double horizontal = 0.0, double vertical = 0.0}) =>
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
        child: this,
      );
}
