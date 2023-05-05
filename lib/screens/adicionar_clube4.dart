import 'package:flutter/material.dart';
import 'package:pagepoker/widget/reusable_textformfield.dart';
import 'package:pagepoker/widget/round_button.dart';

import '../utils/color.dart';
import '../widget/backward_button.dart';
import '../widget/custom_appbar.dart';
import '../widget/reusable_text.dart';
import 'adicionar_clube3.dart';
import 'adicionar_clube5.dart';

class AdicionarClube4 extends StatelessWidget {
  const AdicionarClube4({Key? key}) : super(key: key);

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
              width: mq.width * 0.75,
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
                    title: "Verificar clube",
                    size: 20,
                    weight: FontWeight.w700,
                    color: darkBlueColor,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const ReusableText(
                    title: "Será enviado e retirado fichas da sua conta e você precisa informa os valores corretos para que possamos verificar sua conta e permitido depósitos e saques.",
                    weight: FontWeight.w400,
                    color: darkBlueColor,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const ReusableTextForm(hintText: "Valor de fichas recebidas",filledColor: lightGreyColor,),
                  const SizedBox(
                    height: 11,
                  ),
                  const ReusableTextForm(hintText: "Valor de fichas retirado",filledColor: lightGreyColor,),
                  const SizedBox(
                    height: 100,
                  ),
                  RoundButton(title: 'VINCULAR CLUBE',filled: true, onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                      return const AdicionarClube5();
                    }),);
                  },),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(

                    height: 40,
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: darkBlueColor,width: 2,
                        )
                    ),
                    child: const ReusableText(
                        title: "VOLTAR",
                        size: 16,
                        weight: FontWeight.w700,
                        color: darkBlueColor
                    ),
                  ),
                ],
              ),
            )

          ],
        ),
      ),
    ),);
  }
}
