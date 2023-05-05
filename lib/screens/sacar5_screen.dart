import 'package:flutter/material.dart';
import 'package:pagepoker/widget/reusable_text.dart';
import 'package:pagepoker/widget/round_button.dart';

import '../utils/color.dart';
import '../widget/custom_appbar.dart';

class Sacar5Screen extends StatelessWidget {
  const Sacar5Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(context),
        body: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 8,
              width: mq.width,
              color: greenColor,
            ),
            SizedBox(height: 120,),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Container(
                      height: 128,
                      width: 128,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: redColor,
                      ),
                      child: Icon(
                        Icons.close,
                        color: whiteColor,
                        size: 100,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ReusableText(
                      title: "Saldo insuficiente, confira suas fichas no clube solicitado e tente novamente.",
                      size: 24,
                      weight: FontWeight.w700,
                      color: greenColor,
                      textAlign: TextAlign.center,
                    ),
                    Spacer(),
                    RoundButton(title: "VOLTAR AO INÍCIO",filled: true, onTap: () {}),
                    SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
