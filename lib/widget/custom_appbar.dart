import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../screens/menu_screen.dart';
import '../utils/color.dart';

AppBar CustomAppBar(BuildContext context) {
  return AppBar(
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) {
                        return const MenuScreen();
                      }),
                    );
                  },
                  child: SvgPicture.asset("assets/icons/menu.svg"))
            ],
          ),
        ],
      ),
    ),
  );
}
