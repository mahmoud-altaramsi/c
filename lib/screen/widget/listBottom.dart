import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:trancleatbasec/screen/Popularexamples.dart';
import 'package:trancleatbasec/screen/function/gotoscreen.dart';
import 'package:trancleatbasec/screen/sheard/color.dart';
import 'package:trancleatbasec/screen/sheard/textStyle.dart';
import 'package:trancleatbasec/screen/shearscreen.dart';

class ListBottomChoseFutcher extends StatelessWidget {
  const ListBottomChoseFutcher({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(40),
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(5),
              topLeft: Radius.circular(5),
            ),
            color: fireenginered,
          ),
          width: double.infinity,
          height: 150,
          child: TextButton(
            onPressed: () {
              goToScreen(context: context, widget: ShowTextTrancleat());
            },
            child: Text(
              "Start Words",
              style: h2Bold.merge(
                TextStyle(
                  color: white,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(40),
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(5),
              topLeft: Radius.circular(5),
            ),
            color: coolgray,
          ),
          width: double.infinity,
          height: 150,
          child: TextButton(
            onPressed: () {
              goToScreen(context: context, widget: Popularexamples());
            },
            child: Text(
              "Popular examples",
              style: h2Bold.merge(
                TextStyle(
                  color: white,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(40),
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(5),
              topLeft: Radius.circular(5),
            ),
            color: spacecadet,
          ),
          width: double.infinity,
          height: 150,
          child: TextButton(
            onPressed: () {
              AwesomeDialog(
                context: context,
                dialogType: DialogType.noHeader,
                animType: AnimType.rightSlide,
                title: 'Be patient.',
                titleTextStyle: h2Bold,
                desc:
                    'Wait for the feature you are looking for to be added within the application.....',
                descTextStyle: h3,
                alignment: Alignment.bottomCenter,
                autoDismiss: true,
              ).show();
            },
            child: Text(
              "Waste your time from here",
              style: h2Bold.merge(
                TextStyle(
                  color: white,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
