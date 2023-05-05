import 'package:flutter/material.dart';
import 'package:pagepoker/widget/custom_appbar.dart';
import 'package:pagepoker/widget/reusable_textformfield.dart';

import '../utils/color.dart';
import '../widget/backward_button.dart';
import '../widget/reusable_text.dart';
import '../widget/round_button.dart';

class TrocarSenha extends StatelessWidget {
  const TrocarSenha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: CustomAppBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              const BackwardButton(),
              const SizedBox(
                height: 16,
              ),
              const ReusableText(
                title: "Trocar senha",
                size: 20,
                weight: FontWeight.w700,
                color: darkBlueColor,
              ),
              const SizedBox(
                height: 16,
              ),
              const ReusableText(
                title: "Senha Atual",
                weight: FontWeight.w700,
                color: darkBlueColor,
              ),
              const SizedBox(
                height: 6,
              ),
              const ReusableTextForm(filledColor: lightGreyColor,),
              const SizedBox(
                height: 12,
              ),

              const ReusableText(
                title: "Nova senha",
                weight: FontWeight.w700,
                color: darkBlueColor,
              ),
              const SizedBox(
                height: 6,
              ),
              const ReusableTextForm(filledColor: lightGreyColor,),
              const SizedBox(
                height: 12,
              ),

              const ReusableText(
                title: "Confirmar nova senha",
                weight: FontWeight.w700,
                color: darkBlueColor,
              ),

              const SizedBox(
                height: 6,
              ),
              const ReusableTextForm(filledColor: lightGreyColor,),

              const SizedBox(
                height: 50,
              ),
              RoundButton(title: 'Enviar link para redefinir',filled: true, onTap: () {  },)
            ],
          ),
        ),
      ),
    ),);
  }
}

