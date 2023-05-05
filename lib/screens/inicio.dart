import 'package:flutter/material.dart';
import 'package:pagepoker/screens/sacar1_screen.dart';
import 'package:pagepoker/screens/transa%C3%A7%C3%B5es.dart';
import 'package:pagepoker/utils/color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pagepoker/widget/reusable_text.dart';

import '../widget/custom_appbar.dart';
import '../widget/reusable_card.dart';
import 'adicionar_clube.dart';
import 'depositar_screen.dart';

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
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
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: greenColor,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              ReusableText(
                                title: "Saque e deposite\nem instantes!",
                                size: 20,
                                weight: FontWeight.w800,
                                color: darkBlueColor,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              ReusableText(
                                title: "a qualquer hora ou dia\nda semana!",
                                weight: FontWeight.w400,
                                color: darkBlueColor,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 120,
                        child: Image.asset(
                          "assets/images/Intersect.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const ReusableText(
                  title: "Acesso rápido",
                  size: 20,
                  weight: FontWeight.w700,
                  color: darkBlueColor,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (BuildContext context) {
                            return const DepositarScreen();
                          }),
                        );
                      },
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: lightGreyColor,
                        child: SvgPicture.asset("assets/icons/down.svg"),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                          return const Sacar1Screen();
                        }),);
                      },
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: lightGreyColor,
                        child: SvgPicture.asset("assets/icons/upload.svg"),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (BuildContext context) {
                            return const Transacoes();
                          }),
                        );
                      },
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: lightGreyColor,
                        child: SvgPicture.asset("assets/icons/transfer.svg"),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                      return AdicionarClube();
                    }));
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
                        SvgPicture.asset("assets/icons/fichas-de-poker.svg"),
                        const SizedBox(
                          width: 10,
                        ),
                        const ReusableText(
                          title: "ADICIONAR CLUBE",
                          size: 16,
                          weight: FontWeight.w500,
                          color: darkBlueColor,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const ReusableText(
                  title: "Clubes Favoritos",
                  size: 20,
                  weight: FontWeight.w700,
                  color: darkBlueColor,
                ),
                const SizedBox(
                  height: 20,
                ),
                ...List.generate(3, (index) {
                  return const ReusableCard();
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
