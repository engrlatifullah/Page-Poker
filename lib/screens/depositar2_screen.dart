import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pagepoker/widget/reusable_textformfield.dart';

import '../utils/color.dart';
import '../widget/backward_button.dart';
import '../widget/custom_appbar.dart';
import '../widget/reusable_text.dart';
import '../widget/round_button.dart';
import 'depositar3_screen.dart';

class Depositar2Screen extends StatelessWidget {
  const Depositar2Screen({Key? key}) : super(key: key);

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
              width: mq.width * 0.5,
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
                      title: "Comprar fichas",
                      size: 20,
                      weight: FontWeight.w700,
                      color: darkBlueColor,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const ReusableText(
                      title: "Deposite em instantes via PiX!",
                      weight: FontWeight.w400,
                      color: darkBlueColor,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                   Container(
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(8),
                       color: lightGreyColor,
                     ),
                     child:  Row(
                       children: [
                         const SizedBox(width: 5,),
                         SvgPicture.asset("assets/icons/Rs.svg"),
                         const SizedBox(width: 5,),
                         const Expanded(
                           child: TextField(
                             decoration: InputDecoration(
                               hintText: "Valores entre 50,00 e 5.000,00",
                               border: UnderlineInputBorder(
                                 borderSide: BorderSide.none,
                               ),
                               focusedBorder: UnderlineInputBorder(
                                 borderSide: BorderSide.none,
                               ),
                             ),
                           ),
                         ),

                       ],
                     ),
                   ),
                    const SizedBox(
                      height: 16,
                    ),
                    const ReusableText(
                      title: "Dados da transação",
                      size: 20,
                      weight: FontWeight.w700,
                      color: darkBlueColor,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const ReusableText(
                      title: "Antes clicar em de gerar o QR Code confira os dados do clube, jogador e quantidade de fichas que você vai receber.",
                      weight: FontWeight.w400,
                      color: darkBlueColor,
                    ),
                    const SizedBox(
                      height: 16,
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
                                title: "Nome do Clube:",
                                weight: FontWeight.w700,
                                color: darkBlueColor,
                              ),
                              SizedBox(width: 5,),
                              ReusableText(
                                title: "ODDs Poker Online",
                                weight: FontWeight.w400,
                                color: darkBlueColor,
                              ),
                            ],
                          ),
                          const SizedBox(height: 12,),
                          Row(
                            children: const [
                              ReusableText(
                                title: "ID do clube:",
                                weight: FontWeight.w700,
                                color: darkBlueColor,
                              ),
                              SizedBox(width: 5,),
                              ReusableText(
                                title: "0000000",
                                weight: FontWeight.w400,
                                color: darkBlueColor,
                              ),
                            ],
                          ),

                          const SizedBox(height: 12,),
                          Row(
                            children: const [
                              ReusableText(
                                title: "ID do conta:",
                                weight: FontWeight.w700,
                                color: darkBlueColor,
                              ),
                              SizedBox(width: 5,),
                              ReusableText(
                                title: "0000000",
                                weight: FontWeight.w400,
                                color: darkBlueColor,
                              ),
                            ],
                          ),
                          const SizedBox(height: 12,),
                          Row(
                            children: const [
                              ReusableText(
                                title: "Total de fichas : ",
                                weight: FontWeight.w700,
                                color: darkBlueColor,
                              ),
                              SizedBox(width: 5,),
                              ReusableText(
                                title: "50.00 ",
                                weight: FontWeight.w700,
                                size: 24,
                                color: darkBlueColor,
                              ),

                              SizedBox(width: 5,),
                              ReusableText(
                                title: "fichas",
                                weight: FontWeight.w400,
                                color: darkBlueColor,
                              ),

                            ],
                          ),

                        ],
                      ),
                    ),
                    const SizedBox(height: 50,),
                    RoundButton(title: 'GERAR QR CODE',filled: true, onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                        return const Depositar3Sccreen();
                      }));
                    },),
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
