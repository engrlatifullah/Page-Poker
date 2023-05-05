import 'package:flutter/material.dart';
import 'package:pagepoker/widget/reusable_text.dart';

import '../utils/color.dart';


class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool filled;

  const RoundButton({
    super.key,
    required this.title,
    required this.onTap,
    this.filled = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: filled ? greenColor : transparentColor,
            border: Border.all(
              color: filled ? transparentColor : whiteColor,
            )),
        child: ReusableText(
          title: title,
          size: 16,
          weight: FontWeight.w700,
          color: filled ? darkBlueColor : whiteColor,
        ),
      ),
    );
  }
}