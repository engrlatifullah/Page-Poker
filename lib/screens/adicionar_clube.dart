import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pagepoker/widget/backward_button.dart';

import '../utils/color.dart';
import '../widget/custom_appbar.dart';
import '../widget/reusable_text.dart';
import 'adicionar_clube2.dart';

class AdicionarClube extends StatelessWidget {
  const AdicionarClube({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: CustomAppBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children:  [
                  const BackwardButton(),
                  const SizedBox(width: 10,),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                          return const AdicionarClube2();
                        }),);
                      },
                      child: Container(
                        height: 40,
                        width: double.infinity,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: greenColor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const ReusableText(
                              title: "ADICIONAR CLUBE",
                              size: 16,
                              weight: FontWeight.w500,
                              color: darkBlueColor,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset("assets/icons/fichas-de-poker.svg"),


                          ],
                        ),
                      ),
                    ),
                  ),

                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const ReusableText(
                title: "Clubes Preferidos",
                size: 20,
                weight: FontWeight.w700,
                color: darkBlueColor,
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: lightGreyColor,
                ),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: darkBlueColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const ReusableText(
                            title: "Apelido do clube",
                            size: 24,
                            weight: FontWeight.w700,
                            color: whiteColor,
                          ),
                          SvgPicture.asset("assets/icons/fav.svg"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
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
                                title: "Nome Oficial do Clube",
                                weight: FontWeight.w400,
                                color: darkBlueColor,
                              ),
                            ],
                          ),
                          const SizedBox(height: 12,),
                          Row(
                            children: [
                              Column(
                                children: [
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
                                ],
                              ),
                              const Spacer(),
                              const Icon(Icons.arrow_forward_ios,color: darkBlueColor,),

                            ],
                          ),
                          const SizedBox(height: 12,),
                          const ReusableText(
                            title: "VERIFICADO",
                            weight: FontWeight.w700,
                            color: greenColor,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const ReusableText(
                title: "Todos os Clubes",
                size: 20,
                weight: FontWeight.w700,
                color: darkBlueColor,
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: lightGreyColor,
                ),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: redColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const ReusableText(
                            title: "Apelido do clube",
                            size: 24,
                            weight: FontWeight.w700,
                            color: whiteColor,
                          ),
                          SvgPicture.asset("assets/icons/fav.svg"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
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
                                title: "Nome Oficial do Clube",
                                weight: FontWeight.w400,
                                color: darkBlueColor,
                              ),
                            ],
                          ),
                          const SizedBox(height: 12,),
                          Row(
                            children: [
                              Column(
                                children: [
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
                                ],
                              ),
                              const Spacer(),
                              const Icon(Icons.arrow_forward_ios,color: darkBlueColor,),

                            ],
                          ),
                          const SizedBox(height: 12,),
                          const ReusableText(
                            title: "Todos os Clubes",
                            weight: FontWeight.w700,
                            color: redColor,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              const SizedBox(
                height: 16,
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: lightGreyColor,
                ),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: darkBlueColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const ReusableText(
                            title: "Apelido do clube",
                            size: 24,
                            weight: FontWeight.w700,
                            color: whiteColor,
                          ),
                          SvgPicture.asset("assets/icons/fav.svg"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
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
                                title: "Nome Oficial do Clube",
                                weight: FontWeight.w400,
                                color: darkBlueColor,
                              ),
                            ],
                          ),
                          const SizedBox(height: 12,),
                          Row(
                            children: [
                              Column(
                                children: [
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
                                ],
                              ),
                              const Spacer(),
                              const Icon(Icons.arrow_forward_ios,color: darkBlueColor,),

                            ],
                          ),
                          const SizedBox(height: 12,),
                          const ReusableText(
                            title: "VERIFICADO",
                            weight: FontWeight.w700,
                            color: greenColor,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    ),);
  }
}
