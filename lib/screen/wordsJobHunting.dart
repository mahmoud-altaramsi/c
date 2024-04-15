import 'package:flutter/material.dart';
import 'package:trancleatbasec/chose_longuag.dart';
import 'package:trancleatbasec/screen/sheard/color.dart';
import 'package:trancleatbasec/screen/sheard/textStyle.dart';
import 'package:trancleatbasec/screen/sheard/text_A_to_E.dart';
import 'package:trancleatbasec/screen/shearscreen.dart';
import 'package:trancleatbasec/screen/widget/leading.dart';
import 'package:trancleatbasec/screen/widget/textBottom.dart';

class WordsJobHunting extends StatelessWidget {
  WordsJobHunting({super.key});
  List<String> listTransleat = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIcons(context: context),
        titleSpacing: 0,
        title: Text(
          "Job Hunting",
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
                    crossAxisCount: 1, mainAxisExtent: 75, mainAxisSpacing: 2),
                itemBuilder: (context, index) {
                  return TextTranse(
                    textAribiec: UserTextTranse().wordsJobhuntingArabic[index],
                    vsText: "=",
                    textEnglish: UserTextTranse().wordsJobhuntingEnglish[index],
                  );
                },
              ),
            ),
          ),
          Divider(
            height: 0,
            thickness: 10,
            color: text,
          ),
          Divider(
            height: 30,
            thickness: 3,
            color: spacecadet,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextBottomEdit(
                widget: WordsJopInterview(),
                title: "Job interview",
                height: 60,
                width: 135,
              ),
              const SizedBox(
                width: 55,
              ),
              TextBottomEdit(
                widget: WordsOverthinking(),
                title: "Overthinking",
                height: 60,
                width: 135,
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          TextBottomEdit(
            widget: const ChoseLouangueg(),
            title: "Home",
            height: 60,
            width: 135,
          ),
        ],
      ),
    );
  }
}
