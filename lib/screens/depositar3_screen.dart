import 'package:flutter/material.dart';
import 'package:pagepoker/widget/custom_appbar.dart';

import '../utils/color.dart';
import '../widget/backward_button.dart';
import '../widget/reusable_text.dart';
import '../widget/round_button.dart';
import 'depositar4_screen.dart';
class Depositar3Sccreen extends StatelessWidget {
  const Depositar3Sccreen({Key? key}) : super(key: key);

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
            width: mq.width * 0.75,
            color: greenColor,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: const BackwardButton()),
                  const SizedBox(
                    height: 16,
                  ),
                  const ReusableText(
                    title: "Finalize o pagamento",
                    size: 20,
                    weight: FontWeight.w700,
                    color: darkBlueColor,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const ReusableText(
                    title: "Escaneie o QR Code ou copie o código copia e cola para concluir sua transação através do seu banco.",
                    weight: FontWeight.w400,
                    color: darkBlueColor,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const ReusableText(
                    title: "Após a finalização do pagamento suas fichas estarão disponíveis em instantes.",
                    weight: FontWeight.w400,
                    color: darkBlueColor,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    padding: EdgeInsets.all(24),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: lightGreyColor
                    ),
                    child: Image.asset("assets/images/qr.png",fit: BoxFit.cover,),
                  ),
                  const SizedBox(height: 44,),
                  RoundButton(title: 'GERAR QR CODE',filled: true, onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                      return const Depositar4Screen();
                    }));
                  },),
                ],
              ),
            ),
          )
        ],
      ),
    ),);
  }
}
