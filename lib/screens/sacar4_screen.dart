import 'package:flutter/material.dart';
import 'package:pagepoker/screens/sacar5_screen.dart';
import 'package:pagepoker/widget/reusable_text.dart';
import 'package:pagepoker/widget/round_button.dart';

import '../utils/color.dart';
import '../widget/custom_appbar.dart';

class Sacar4Screen extends StatelessWidget {
  const Sacar4Screen({Key? key}) : super(key: key);

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
            const SizedBox(height: 120,),
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
                        color: greenColor,
                      ),
                      child: const Icon(
                        Icons.done,
                        color: whiteColor,
                        size: 100,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const ReusableText(
                      title: "Saque concluído! ",
                      size: 24,
                      weight: FontWeight.w700,
                      color: greenColor,
                    ),
                    const Spacer(),
                    RoundButton(title: "VOLTAR AO INÍCIO",filled: true, onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                        return const Sacar5Screen();
                      }));
                    }),
                    const SizedBox(
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
