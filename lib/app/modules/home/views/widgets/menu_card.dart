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
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(6.0)),
              color: AppColors.grideViewBgColor,
              
            ),
            child: IconButton(
              onPressed: onPressed,
              icon: Icon(
                icon,
                size: 48,
                color: AppColors.buttonColor,
              ),
            )),
        Text(label),
        Text(subLabel),
      ],
    );
  }
}
