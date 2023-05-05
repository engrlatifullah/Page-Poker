import 'package:flutter/material.dart';
import 'package:pagepoker/screens/sacar2_screen.dart';
import 'package:pagepoker/widget/reusable_card.dart';
import 'package:pagepoker/widget/reusable_text.dart';

import '../utils/color.dart';
import '../widget/backward_button.dart';
import '../widget/custom_appbar.dart';
import 'depositar2_screen.dart';

class Sacar1Screen extends StatelessWidget {
  const Sacar1Screen({Key? key}) : super(key: key);

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
              width: mq.width * 0.25,
              color: greenColor,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BackwardButton(),
                  const SizedBox(
                    height: 16,
                  ),
                  const ReusableText(
                    title: "Seus clubes verificados",
                    size: 20,
                    weight: FontWeight.w700,
                    color: darkBlueColor,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ...List.generate(2, (index) {
                    return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return const Sacar2screen();
                              },
                            ),
                          );
                        },
                        child: const ReusableCard());
                  })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
