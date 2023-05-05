import 'package:flutter/material.dart';

import '../utils/color.dart';
import '../widget/backward_button.dart';
import '../widget/custom_appbar.dart';
import '../widget/reusable_text.dart';
import '../widget/round_button.dart';
import 'adicionar_clube4.dart';

class AdicionarClube3 extends StatelessWidget {
  const AdicionarClube3({Key? key}) : super(key: key);

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
                width: mq.width * 0.5,
                color: greenColor,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    const SizedBox(
                      height: 16,
                    ),
                    const BackwardButton(),
                    const SizedBox(
                      height: 16,
                    ),
                    const ReusableText(
                      title: "Confira os dados",
                      size: 20,
                      weight: FontWeight.w700,
                      color: darkBlueColor,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const ReusableText(
                      title: "Confira com atenção os dados do clube",
                      weight: FontWeight.w400,
                      color: darkBlueColor,
                    ),
                    const SizedBox(
                      height: 24,
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
                                title: "Apelido: ",
                                weight: FontWeight.w700,
                                color: darkBlueColor,
                              ),
                              SizedBox(width: 5,),
                              ReusableText(
                                title: "ODDs 1",
                                weight: FontWeight.w400,
                                color: darkBlueColor,
                              ),
                            ],
                          ),
                          const SizedBox(height: 12,),
                          Row(
                            children: const [
                              ReusableText(
                                title: "Nome do clube: ",
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

                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    RoundButton(title: 'VINCULAR CLUBE',filled: true, onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                        return AdicionarClube4();
                      }));
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
                            color: darkBlueColor,
                            width: 2
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
