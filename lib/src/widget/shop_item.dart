import 'package:eas_pbb/utils/constant.dart';
import 'package:eas_pbb/utils/fonts.dart';
import 'package:flutter/material.dart';

class ShopItem extends StatelessWidget {
  const ShopItem({
    super.key,
    required this.title,
    required this.description
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontFamily: Fonts.inter,
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.black
          ),
        ),
        Text(
          description,
          style: const TextStyle(
              fontFamily: Fonts.inter,
              fontWeight: FontWeight.w500,
              fontSize: 15,
              color: Colors.black
          ),
        ),
        Container(
          width: double.infinity,
          height: 1,
          color: Constant.blackColor,
          margin: const EdgeInsets.symmetric(vertical: 12),
        )
      ],
    );
  }
}
