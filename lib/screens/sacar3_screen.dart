import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pagepoker/screens/sacar4_screen.dart';
import 'package:pagepoker/widget/reusable_textformfield.dart';

import '../utils/color.dart';
import '../widget/backward_button.dart';
import '../widget/custom_appbar.dart';
import '../widget/reusable_text.dart';
import '../widget/round_button.dart';
import 'depositar3_screen.dart';

class Sacar3Screen extends StatelessWidget {
  const Sacar3Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
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
              SingleChildScrollView(
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
                        title: "Confira os dados da transação",
                        size: 20,
                        weight: FontWeight.w700,
                        color: darkBlueColor,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const ReusableText(
                        title: "Seu saque será finalizado caso você possua fichas suficientes no clube, sendo que somente será efetuado para chave PIX CPF do titular desta conta.",
                        weight: FontWeight.w400,
                        color: darkBlueColor,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: lightGreyColor,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                ReusableText(
                                  title: "Banco:  ",
                                  weight: FontWeight.w700,
                                  color: darkBlueColor,
                                ),
                                SizedBox(width: 12,),
                                ReusableText(
                                  title: "Itaú S/A",
                                  weight: FontWeight.w400,
                                  color: darkBlueColor,
                                ),
                              ],
                            ),
                            const SizedBox(height: 12,),
                            Row(
                              children: const [
                                ReusableText(
                                  title: "Tipo de chave:  ",
                                  weight: FontWeight.w700,
                                  color: darkBlueColor,
                                ),
                                SizedBox(width: 5,),
                                ReusableText(
                                  title: "CPF",
                                  weight: FontWeight.w400,
                                  color: darkBlueColor,
                                ),
                              ],
                            ),

                            const SizedBox(height: 12,),
                            Row(
                              children: const [
                                ReusableText(
                                  title: "Chave Pix: ",
                                  weight: FontWeight.w700,
                                  color: darkBlueColor,
                                ),
                                SizedBox(width: 5,),
                                ReusableText(
                                  title: "000.000.000-00",
                                  weight: FontWeight.w400,
                                  color: darkBlueColor,
                                ),
                              ],
                            ),
                            const SizedBox(height: 12,),
                            Row(
                              children: const [
                                ReusableText(
                                  title: "Destinatário: ",
                                  weight: FontWeight.w700,
                                  color: darkBlueColor,
                                ),
                                SizedBox(width: 5,),
                                ReusableText(
                                  title: "João da Silva",
                                  weight: FontWeight.w400,
                                  color: darkBlueColor,
                                ),


                              ],
                            ),
                            const SizedBox(height: 12,),
                            Row(
                              children: const [
                                ReusableText(
                                  title: "Valor:   ",
                                  weight: FontWeight.w700,
                                  color: darkBlueColor,
                                ),
                                SizedBox(width: 5,),
                                ReusableText(
                                  title: "R\$ 50,00 ",
                                  weight: FontWeight.w400,
                                  color: darkBlueColor,
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                       SizedBox(
                        height: mq.height * 0.25,),
                      RoundButton(title: 'GERAR QR CODE',filled: true, onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                          return const Sacar4Screen();
                        }));
                      },),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
