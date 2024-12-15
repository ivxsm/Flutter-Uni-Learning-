import 'package:flutter/material.dart';

extension Nav on BuildContext {
  push(Widget target) {
    MaterialPageRoute(
      builder: (context) => target,
    );
  }
}