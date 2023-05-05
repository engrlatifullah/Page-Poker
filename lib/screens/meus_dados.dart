import 'package:flutter/material.dart';
import 'package:pagepoker/widget/custom_appbar.dart';
import 'package:pagepoker/widget/reusable_textformfield.dart';

import '../utils/color.dart';
import '../widget/backward_button.dart';
import '../widget/reusable_text.dart';

class MeusDados extends StatelessWidget {
  const MeusDados({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: CustomAppBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              BackwardButton(),
              SizedBox(
                height: 16,
              ),
              ReusableText(
                title: "Meus dados",
                size: 20,
                weight: FontWeight.w700,
                color: darkBlueColor,
              ),
              SizedBox(
                height: 16,
              ),
              ReusableText(
                title: "Nome completo",
                weight: FontWeight.w700,
                color: darkBlueColor,
              ),
              SizedBox(
                height: 6,
              ),
              ReusableTextForm(filledColor: lightGreyColor,),
              SizedBox(
                height: 12,
              ),

              ReusableText(
                title: "CPF",
                weight: FontWeight.w700,
                color: darkBlueColor,
              ),
              SizedBox(
                height: 6,
              ),
              ReusableTextForm(filledColor: lightGreyColor,),
              SizedBox(
                height: 12,
              ),

              ReusableText(
                title: "Meu e-mail",
                weight: FontWeight.w700,
                color: darkBlueColor,
              ),
              SizedBox(
                height: 6,
              ),
              ReusableTextForm(filledColor: lightGreyColor,),
              SizedBox(
                height: 12,
              ),

              ReusableText(
                title: "Meu número",
                weight: FontWeight.w700,
                color: darkBlueColor,
              ),
              SizedBox(
                height: 6,
              ),
              ReusableTextForm(filledColor: lightGreyColor,),
              SizedBox(
                height: 12,
              ),

            ],
          ),
        ),
      ),
    ),);
  }
}
