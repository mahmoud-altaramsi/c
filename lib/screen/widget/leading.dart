import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BackIcons extends StatelessWidget {
  BackIcons({required this.context, super.key});
  var context;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(FontAwesomeIcons.leftLong),
    );
  }
}
