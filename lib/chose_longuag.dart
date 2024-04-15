import 'package:flutter/material.dart';
import 'package:trancleatbasec/screen/sheard/textStyle.dart';
import 'package:trancleatbasec/screen/widget/listBottom.dart';

import 'screen/widget/leading.dart';

class ChoseLouangueg extends StatelessWidget {
  const ChoseLouangueg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Chose Bottom",
          style: h2Bold,
        ),
      ),
      body: const SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              ListBottomChoseFutcher(),
            ],
          ),
        ),
      ),
    );
  }
}
