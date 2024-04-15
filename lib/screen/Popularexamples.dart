import 'package:flutter/material.dart';
import 'package:trancleatbasec/chose_longuag.dart';
import 'package:trancleatbasec/screen/sheard/color.dart';
import 'package:trancleatbasec/screen/sheard/textStyle.dart';
import 'package:trancleatbasec/screen/sheard/text_A_to_E.dart';
import 'package:trancleatbasec/screen/shearscreen.dart';
import 'package:trancleatbasec/screen/widget/TextWordsPopular.dart';
import 'package:trancleatbasec/screen/widget/leading.dart';
import 'package:trancleatbasec/screen/widget/textBottom.dart';

class Popularexamples extends StatelessWidget {
  Popularexamples({super.key});
  List<String> listTransleat = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIcons(context: context),
        titleSpacing: 0,
        title: Text(
          "Job interview",
          style: h2Bold.merge(
            TextStyle(color: spacecadet),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 520,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                itemCount: 50,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 0,
                    crossAxisSpacing: 5,
                    mainAxisExtent: 280),
                itemBuilder: (context, index) {
                  return TextWordsPopular(
                    textAribiec: UserTextTranse().PopularexamplesArabick[index],
                    vsText: "=",
                    textEnglish: UserTextTranse().PopularexamplesEnglish[index],
                  );
                },
              ),
            ),
          ),
          Divider(
            height: 0,
            thickness: 10,
            color: spacecadet,
          ),
          Divider(
            height: 13,
            thickness: 3,
            color: white,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextBottomEdit(
                colorBottom: black,
                widget: WordsJobHunting(),
                title: "Job hunting",
                height: 60,
                width: 140,
              ),
              const SizedBox(
                width: 55,
              ),
              TextBottomEdit(
                colorBottom: coolgray,
                widget: WordsOverthinking(),
                title: "Overthinking",
                height: 60,
                width: 140,
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          TextBottomEdit(
            colorBottom: redPantone,
            widget: const ChoseLouangueg(),
            title: "Home",
            height: 60,
            width: 140,
          ),
        ],
      ),
    );
  }
}
