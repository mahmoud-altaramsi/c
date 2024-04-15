import 'package:flutter/material.dart';
import 'package:trancleatbasec/screen/sheard/textStyle.dart';

import '../sheard/color.dart';

class TextWordsPopular extends StatelessWidget {
  TextWordsPopular(
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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
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
                  height: 10,
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
                  height: 10,
                ),
                Container(
                  width: double.infinity,
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
                const SizedBox(
                  height: 20,
                ),
                Divider(
                  height: 9,
                  thickness: 3,
                  color: spacecadet,
                  endIndent: 12.5,
                  indent: 12.5,
                ),
                Divider(
                  height: 9,
                  thickness: 3,
                  color: coolgray,
                  endIndent: 30,
                  indent: 30,
                ),
                Divider(
                  height: 9,
                  thickness: 3,
                  color: redPantone,
                  endIndent: 50,
                  indent: 50,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
