import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/color.dart';
import '../widget/backward_button.dart';
import '../widget/custom_appbar.dart';
import '../widget/reusable_text.dart';

class Transacoes extends StatelessWidget {
  const Transacoes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(context),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BackwardButton(),
                const SizedBox(
                  height: 16,
                ),
                const ReusableText(
                  title: "Histórico de transações",
                  size: 20,
                  weight: FontWeight.w700,
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
                        children: [
                          Container(
                            height: 36,
                            width: 36,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: darkBlueColor, width: 2),
                            ),
                            child: SvgPicture.asset("assets/icons/download.svg"),
                          ),
                          const SizedBox(width: 12,),
                          const ReusableText(
                            title: "Aguardando depósito", weight: FontWeight.w700,
                            color: darkBlueColor,),

                        ],
                      ),
                      const SizedBox(height: 12,),
                      const ReusableText(
                        title: "Efetue o pagamento das 50.00 fichas ",
                        weight: FontWeight.w700,
                        color: darkBlueColor,),
                      const SizedBox(height: 12,),
                      Row(
                        children: const [
                          ReusableText(
                            title: "ID do clube: ",
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
                            title: "ID da conta: ",
                            weight: FontWeight.w700,
                            color: darkBlueColor,
                          ),
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
                            title: "Valor:  ",
                            weight: FontWeight.w700,
                            color: darkBlueColor,
                          ),
                          ReusableText(
                            title: "R\$ 50,00",
                            weight: FontWeight.w400,
                            color: darkBlueColor,
                          ),
                          Spacer(),
                          ReusableText(
                            title: "Data:  ",
                            weight: FontWeight.w700,
                            color: darkBlueColor,
                          ),
                          ReusableText(
                            title: "15/03/23 - 20:27",
                            weight: FontWeight.w400,
                            color: darkBlueColor,
                          ),

                        ],
                      ),
                    ],
                  ),
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
                        children: [
                          Container(
                            height: 36,
                            width: 36,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: redColor, width: 2),
                            ),
                            child: const Icon(Icons.close,color: redColor,),
                          ),
                          const SizedBox(width: 12,),
                          const ReusableText(
                            title: "Saldo insuficiente ", weight: FontWeight.w700,
                            color: darkBlueColor,),

                        ],
                      ),
                      const SizedBox(height: 12,),
                      const ReusableText(
                        title: "Parabéns! Você sacou 150.00 fichas ",
                        weight: FontWeight.w700,
                        color: darkBlueColor,),
                      const SizedBox(height: 12,),
                      Row(
                        children: const [
                          ReusableText(
                            title: "ID do clube: ",
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
                            title: "ID da conta: ",
                            weight: FontWeight.w700,
                            color: darkBlueColor,
                          ),
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
                            title: "Banco:",
                            weight: FontWeight.w700,
                            color: darkBlueColor,
                          ),
                          ReusableText(
                            title: "  Itaú S/A",
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
                            title: "Valor:  ",
                            weight: FontWeight.w700,
                            color: darkBlueColor,
                          ),
                          ReusableText(
                            title: "R\$ 50,00",
                            weight: FontWeight.w400,
                            color: darkBlueColor,
                          ),
                          Spacer(),
                          ReusableText(
                            title: "Data:  ",
                            weight: FontWeight.w700,
                            color: darkBlueColor,
                          ),
                          ReusableText(
                            title: "15/03/23 - 20:27",
                            weight: FontWeight.w400,
                            color: darkBlueColor,
                          ),

                        ],
                      ),
                    ],
                  ),
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
                        children: [
                          Container(
                            height: 36,
                            width: 36,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: greenColor,),
                            child: SvgPicture.asset("assets/icons/download.svg",color: whiteColor,),
                          ),
                          const SizedBox(width: 12,),
                          const ReusableText(
                            title: "Depósito Concluído", weight: FontWeight.w700,
                            color: darkBlueColor,),

                        ],
                      ),
                      const SizedBox(height: 12,),
                      const ReusableText(
                        title: "Parabéns! Você comprou 150.00 fichas ",
                        weight: FontWeight.w700,
                        color: darkBlueColor,),
                      const SizedBox(height: 12,),
                      Row(
                        children: const [
                          ReusableText(
                            title: "ID do clube: ",
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
                            title: "ID da conta: ",
                            weight: FontWeight.w700,
                            color: darkBlueColor,
                          ),
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
                            title: "Valor:  ",
                            weight: FontWeight.w700,
                            color: darkBlueColor,
                          ),
                          ReusableText(
                            title: "R\$ 50,00",
                            weight: FontWeight.w400,
                            color: darkBlueColor,
                          ),
                          Spacer(),
                          ReusableText(
                            title: "Data:  ",
                            weight: FontWeight.w700,
                            color: darkBlueColor,
                          ),
                          ReusableText(
                            title: "15/03/23 - 20:27",
                            weight: FontWeight.w400,
                            color: darkBlueColor,
                          ),

                        ],
                      ),
                    ],
                  ),
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
                        children: [
                          Container(
                            height: 36,
                            width: 36,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: greenColor
                            ),
                            child:SvgPicture.asset("assets/icons/upld.svg",color: whiteColor,),
                          ),
                          const SizedBox(width: 12,),
                          const ReusableText(
                            title: "Parabéns! Você sacou 550.00 fichas ", weight: FontWeight.w700,
                            color: darkBlueColor,),

                        ],
                      ),
                      const SizedBox(height: 12,),
                      const ReusableText(
                        title: "Parabéns! Você sacou 550.00 fichas ",
                        weight: FontWeight.w700,
                        color: darkBlueColor,),
                      const SizedBox(height: 12,),
                      Row(
                        children: const [
                          ReusableText(
                            title: "ID do clube: ",
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
                            title: "ID da conta: ",
                            weight: FontWeight.w700,
                            color: darkBlueColor,
                          ),
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
                            title: "Banco:",
                            weight: FontWeight.w700,
                            color: darkBlueColor,
                          ),
                          ReusableText(
                            title: "  Itaú S/A",
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
                            title: "Valor:  ",
                            weight: FontWeight.w700,
                            color: darkBlueColor,
                          ),
                          ReusableText(
                            title: "R\$ 50,00",
                            weight: FontWeight.w400,
                            color: darkBlueColor,
                          ),
                          Spacer(),
                          ReusableText(
                            title: "Data:  ",
                            weight: FontWeight.w700,
                            color: darkBlueColor,
                          ),
                          ReusableText(
                            title: "15/03/23 - 20:27",
                            weight: FontWeight.w400,
                            color: darkBlueColor,
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
