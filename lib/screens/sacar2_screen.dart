import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pagepoker/screens/sacar3_screen.dart';
import '../utils/color.dart';
import '../widget/backward_button.dart';
import '../widget/custom_appbar.dart';
import '../widget/reusable_text.dart';
import '../widget/round_button.dart';
import 'depositar3_screen.dart';

class Sacar2screen extends StatelessWidget {
  const Sacar2screen({Key? key}) : super(key: key);

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
                       SizedBox(
                        height: mq.height * 0.4,
                      ),
                      RoundButton(title: 'SOLICITAR SAQUE',filled: true, onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                          return const Sacar3Screen();
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
