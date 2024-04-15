import 'package:flutter/material.dart';

void goToScreen({required context, required widget}) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => widget,
    ),
  );
}

void goToScreenNoBackBottom({required context, required widget}) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => widget,
    ),
  );
}
