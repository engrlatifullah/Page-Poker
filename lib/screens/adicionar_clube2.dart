import 'package:flutter/material.dart';
import 'package:pagepoker/widget/reusable_textformfield.dart';
import 'package:pagepoker/widget/round_button.dart';

import '../utils/color.dart';
import '../widget/backward_button.dart';
import '../widget/custom_appbar.dart';
import '../widget/reusable_text.dart';
import 'adicionar_clube3.dart';

class AdicionarClube2 extends StatelessWidget {
  const AdicionarClube2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return SafeArea(child: Scaffold(
      appBar: CustomAppBar(context),
      body: SingleChildScrollView(
        child: Column(
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
                  const SizedBox(height: 16,),
                  const BackwardButton(),
                  const SizedBox(
                    height: 16,
                  ),
                  const ReusableText(
                    title: "Vincular clube",
                    size: 20,
                    weight: FontWeight.w700,
                    color: darkBlueColor,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const ReusableText(
                    title: "Vincule seus clubes favoritos para fazer depósitos e saques imediatos a qualquer dia e hora!",
                    weight: FontWeight.w400,
                    color: darkBlueColor,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const ReusableTextForm(filledColor: lightGreyColor,hintText: "ID do Clube",),
                  const SizedBox(
                    height: 11,
                  ),
                  const ReusableTextForm(filledColor: lightGreyColor,hintText: "ID da sua conta",),
                  const SizedBox(
                    height: 11,
                  ),
                  const ReusableTextForm(filledColor: lightGreyColor,hintText: "Defina um apelido",),
                  const SizedBox(
                    height: 100,
                  ),
                  RoundButton(title: "SEGUIR",
                      filled: true,
                      onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                      return AdicionarClube3();
                    }));
                  }),

                ],
              ),
            )

          ],
        ),
      ),
    ),);
  }
}
