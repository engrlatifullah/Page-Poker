import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pagepoker/screens/trocar_senha.dart';
import 'package:pagepoker/widget/reusable_text.dart';

import '../utils/color.dart';
import '../widget/backward_button.dart';
import '../widget/reusable_listtile.dart';
import 'meus_dados.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: darkBlueColor,
          automaticallyImplyLeading: false,
          toolbarHeight: 90,
          flexibleSpace: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/images/appbarLogo.png"),
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: SvgPicture.asset("assets/icons/cross.svg"))
                  ],
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BackwardButton(),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: lightGreyColor,
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(12),
                    leading: Container(
                      height: 56,
                      width: 56,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/images/profilePic.png"),
                        ),
                      ),
                    ),
                    title: const ReusableText(
                      title: "Olá user1234",
                      size: 20,
                      weight: FontWeight.w700,
                      color: darkBlueColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                ReusableListTile(
                  icon: "assets/icons/fichas-de-poker.svg",
                  title: "Adicionar Clube",
                  onTap: () {},
                ),
                const SizedBox(
                  height: 12,
                ),
                ReusableListTile(
                  icon: "assets/icons/down.svg",
                  title: "Depositar",
                  onTap: () {},
                ),
                const SizedBox(
                  height: 12,
                ),
                ReusableListTile(
                  icon: "assets/icons/upload.svg",
                  title: "Sacar",
                  onTap: () {},
                ),
                const SizedBox(
                  height: 12,
                ),
                ReusableListTile(
                  icon: "assets/icons/transfer.svg",
                  title: "Transações",
                  onTap: () {},
                ),
                const SizedBox(
                  height: 12,
                ),
                ReusableListTile(
                  icon: "assets/icons/setting.svg",
                  title: "Meus dados",
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                      return const MeusDados();
                    }),);
                  },
                ),
                const SizedBox(
                  height: 12,
                ),
                ReusableListTile(
                  icon: "assets/icons/privacy.svg",
                  title: "Trocar senha",
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                      return const TrocarSenha();
                    }),);
                  },
                ),
                const SizedBox(
                  height: 12,
                ),
                ReusableListTile(
                  icon: "assets/icons/whats.svg",
                  title: "Suporte",
                  onTap: () {},
                ),
                const SizedBox(
                  height: 40,
                ),
                Center(
                  child: Container(
                    alignment: Alignment.center,
                    width: mq.width * 0.37,
                    height: mq.height * 0.08,
                    decoration: BoxDecoration(
                      color: redColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const ReusableText(
                      title: "Sair ",
                      color: whiteColor,
                      size: 20,
                      weight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: ReusableText(
                    title: "PagPoker | V 1.0.1",color: darkBlueColor,weight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
