import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pagepoker/widget/reusable_text.dart';

import '../utils/color.dart';
class ReusableCard extends StatelessWidget {
  const ReusableCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    Spacer(),
                    Icon(Icons.arrow_forward_ios,color: darkBlueColor,),

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
    );
  }
}