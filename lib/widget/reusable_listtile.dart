import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pagepoker/widget/reusable_text.dart';

import '../utils/color.dart';

class ReusableListTile extends StatelessWidget {
  final VoidCallback onTap;
  final String icon;
  final String title;
  const ReusableListTile({
    super.key, required this.onTap, required this.icon, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: lightGreyColor,
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
          leading: SvgPicture.asset(icon),
          title: ReusableText(
            title: title,size: 20,
            weight: FontWeight.w400,color: darkBlueColor,
          ),
          trailing: const Icon(Icons.arrow_forward_ios,color: darkBlueColor,),
        ),
      ),
    );
  }
}