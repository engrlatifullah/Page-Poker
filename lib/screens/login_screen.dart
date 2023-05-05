import 'package:flutter/material.dart';
import 'package:pagepoker/widget/reusable_text.dart';
import 'package:pagepoker/widget/reusable_textformfield.dart';

import '../utils/color.dart';
import '../widget/round_button.dart';
import 'criar_conta.dart';
import 'inicio.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
                  height: 100,
                ),
                Image.asset('assets/images/logo.png'),
                const SizedBox(
                  height: 50,
                ),
                const ReusableTextForm(
                  hintText: "E-mail",
                ),
                const SizedBox(
                  height: 15,
                ),
                const ReusableTextForm(
                  hintText: "Senha",
                ),
                const SizedBox(
                  height: 50,
                ),
                RoundButton(
                  title: 'ENTRAR',
                  filled: true,
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                      return const Inicio();
                    }),);
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                RoundButton(
                  title: 'CRIAR CONTA',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const CriarConta();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
