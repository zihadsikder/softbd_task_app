import 'package:flutter/material.dart';

import '../../../../core/config/app_colors.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({
    super.key,
    required this.label,
    required this.subLabel,
    required this.onPressed,
    required this.icon,
  });

  final String label;
  final String subLabel;
  final VoidCallback onPressed;
  final ImageProvider icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(6.0)),
              color: AppColors.menuImageColor,

              
            ),
            child: IconButton(
              onPressed: onPressed,
              icon:Image(
                image: icon,
                width: 48,
                height: 48,
                //color: AppColors.buttonColor,
              ),
            )),
        Text(label),
        Text(subLabel),
      ],
    );
  }
}
