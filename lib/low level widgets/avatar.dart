import 'package:developers_hub_corporation_intern/theme.dart';
import 'package:flutter/material.dart';

class AppAvatar extends StatelessWidget {
  final String initials;
  final double size;

  const AppAvatar({
    super.key,
    required this.initials,
    this.size = 64,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: RadialGradient(
              colors: [
                AppColors.coral.withOpacity(0.35),
                AppColors.coral.withOpacity(0.0),
              ],
            ),
          ),
        ),
        Container(
          width: size,
          height: size,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: Text(
            initials,
            style: TextStyle(
              fontSize: size * 0.34,
              fontWeight: FontWeight.w700,
              color: AppColors.ink,
            ),
          ),
        ),
      ],
    );
  }
}