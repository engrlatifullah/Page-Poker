import 'package:flutter/material.dart';
import 'package:pagepoker/widget/reusable_text.dart';
import 'package:pagepoker/widget/reusable_textformfield.dart';

import '../utils/color.dart';
import '../widget/round_button.dart';
import 'criar_conta_code.dart';

class CriarConta extends StatelessWidget {
  const CriarConta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: darkBlueColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Image.asset('assets/images/logo.png'),
                const SizedBox(
                  height: 50,
                ),
                const ReusableTextForm(
                  hintText: "Nome de usuário",
                ),
                const SizedBox(
                  height: 15,
                ),
                const ReusableTextForm(
                  hintText: "E-mail",
                ),
                const SizedBox(
                  height: 15,
                ),
                const ReusableTextForm(
                  hintText: "+55 Numero de telefone",
                ),
                const SizedBox(
                  height: 15,
                ),
                const ReusableTextForm(
                  hintText: "Email",
                ),
                const SizedBox(
                  height: 15,
                ),
                const ReusableTextForm(
                  hintText: "Confirmar senha",
                ),
                const SizedBox(
                  height: 20,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(children: [
                    TextSpan(
                      text: "Ao clicar em CRIAR CONTA eu aceito os",
                      style: TextStyle(
                          fontWeight: FontWeight.w400, color: whiteColor),
                    ),
                    TextSpan(
                      text: " TERMOS DE USO\n",
                      style: TextStyle(
                          fontWeight: FontWeight.w700, color: whiteColor),
                    ),
                    TextSpan(
                      text: "da PagPoker",
                      style: TextStyle(
                          fontWeight: FontWeight.w400, color: whiteColor),
                    ),
                  ]),
                ),
                const SizedBox(
                  height: 20,
                ),
                RoundButton(
                  title: 'CRIAR CONTA',
                  filled: true,
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                      return const CriarContaCode();
                    }),);
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                RoundButton(
                  title: 'VOLTAR',
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

