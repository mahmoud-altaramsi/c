import 'package:flutter/material.dart';
import 'package:trancleatbasec/screen/function/gotoscreen.dart';
import 'package:trancleatbasec/screen/sheard/color.dart';
import 'package:trancleatbasec/screen/sheard/textStyle.dart';

class TextBottomEdit extends StatelessWidget {
  TextBottomEdit(
      {this.height = 35,
      required this.title,
      this.width = 135,
      this.colorBottom,
      required this.widget,
      super.key});
  double? width;
  double? height;
  String title;
  Color? colorBottom;
  Widget widget;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        goToScreenNoBackBottom(context: context, widget: widget);
      },
      child: Container(
        decoration: BoxDecoration(
          color: colorBottom ?? spacecadet,
          borderRadius: BorderRadius.circular(15),
        ),
        width: width,
        height: height,
        child: Center(
          child: Text(
            title,
            style: h3Bold.merge(
              TextStyle(color: white),
            ),
          ),
        ),
      ),
    );
  }
}
