import 'package:flutter/material.dart';
import 'package:trancleatbasec/screen/sheard/textStyle.dart';

import '../sheard/color.dart';

class TextTranse extends StatelessWidget {
  TextTranse(
      {required this.textAribiec,
      required this.vsText,
      required this.textEnglish,
      super.key});

  String textAribiec;
  String textEnglish;
  String vsText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 125,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  color: text,
                ),
                child: Center(
                  child: Text(
                    textAribiec,
                    style: h3Bold.merge(
                      TextStyle(color: white),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 50,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  color: coolgray,
                ),
                child: Center(
                  child: Text(
                    vsText,
                    style: h2Bold.merge(
                      TextStyle(color: white),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 125,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  color: spacecadet,
                ),
                child: Center(
                  child: Text(
                    textEnglish,
                    style: h3Bold.merge(
                      TextStyle(color: antiflashwhite),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
