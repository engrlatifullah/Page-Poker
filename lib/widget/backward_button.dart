import 'package:flutter/material.dart';

import '../utils/color.dart';


class BackwardButton extends StatelessWidget {
  // final VoidCallback onTap;
  const BackwardButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pop(context);
      },
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: darkBlueColor,
          ),
        ),
        child: const Icon(
          Icons.arrow_back,
          color: darkBlueColor,
        ),
      ),
    );
  }
}