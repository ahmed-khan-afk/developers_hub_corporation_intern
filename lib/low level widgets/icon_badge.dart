import 'package:developers_hub_corporation_intern/theme.dart';
import 'package:flutter/material.dart';

class IconBadge extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onTap;
  final double size;

  const IconBadge({
    super.key,
    required this.icon,
    this.onTap,
    this.size = 40,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(size / 2),
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: AppColors.hairline),
        ),
        child: Icon(icon, color: AppColors.slate),
      ),
    );
  }
}