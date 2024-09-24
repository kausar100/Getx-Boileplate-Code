import 'package:flutter/material.dart';

///Gesture extension to extend widget functionality
extension GestureExtension on Widget {
  /// Add on Tap handler to the current widget
  GestureDetector onTap(VoidCallback callback) =>
      GestureDetector(onTap: callback, child: this);

  /// Add on Double Tap handler to the current widget
  GestureDetector onDoubleTap(VoidCallback callback) =>
      GestureDetector(onDoubleTap: callback, child: this);

  /// Add on Long Press handler to the current widget
  GestureDetector onLongPress(VoidCallback callback) =>
      GestureDetector(onLongPress: callback, child: this);

  /// Add on InkWell Tap handler to the current widget
  InkWell onInkTap(
    VoidCallback callback, {
    Color? splashColor,
    Color? focusColor,
    Color? hoverColor,
    bool? enableFeedback,
    double? radius,
    BorderRadius? borderRadius,
    MouseCursor? mouseCursor,
  }) {
    return InkWell(
      onTap: callback,
      splashColor: splashColor,
      focusColor: focusColor,
      hoverColor: hoverColor,
      enableFeedback: enableFeedback,
      radius: radius,
      borderRadius: borderRadius,
      mouseCursor: mouseCursor,
      child: this,
    );
  }

  /// Add onInkWell Double Tap handler to the current widget
  InkWell onInkDoubleTap(
    VoidCallback callback, {
    Color? splashColor,
    Color? focusColor,
    Color? hoverColor,
    bool? enableFeedback,
    double? radius,
    BorderRadius? borderRadius,
    MouseCursor? mouseCursor,
  }) {
    return InkWell(
      onDoubleTap: callback,
      splashColor: splashColor,
      focusColor: focusColor,
      hoverColor: hoverColor,
      enableFeedback: enableFeedback,
      radius: radius,
      borderRadius: borderRadius,
      mouseCursor: mouseCursor,
      child: this,
    );
  }
}

extension TapExtension on ListTile {
  GestureDetector onSelect(
          {required String name, required Function(String name) onClick}) =>
      GestureDetector(
          onTap: () {
            onClick(name);
          },
          child: this);
}
