import 'package:flutter/material.dart';
import 'package:pagepoker/utils/color.dart';
import 'package:pagepoker/widget/otp_text_field.dart';
import 'package:pagepoker/widget/reusable_text.dart';

import '../widget/round_button.dart';

class CriarContaCode extends StatelessWidget {
  const CriarContaCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
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
                height: 70,
              ),
              const ReusableText(title: "Preencha com o código que você recebeu por WhatsApp.",size: 20,weight: FontWeight.w400,color: whiteColor,),
              const SizedBox(height: 20,),
              const ReusableText(title: "Em caso de não receber o código volte a página anterior e confira se seu numero está corretamente.",size: 16,weight: FontWeight.w400,color: whiteColor,),
              const SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OtpTextField(
                    onChanged: (v){
                      if(v.length == 1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                  OtpTextField(
                    onChanged: (v){
                      if(v.length == 1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                  OtpTextField(
                    onChanged: (v){
                      if(v.length == 1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                  OtpTextField(
                    onChanged: (v){
                      if(v.length == 1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                  OtpTextField(
                    onChanged: (v){
                      if(v.length == 1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                  OtpTextField(
                    onChanged: (v){
                      if(v.length == 1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 80,
              ),

              RoundButton(
                title: 'CONFIRMAR',
                filled: true,
                onTap: () {

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
    ),);
  }
}
