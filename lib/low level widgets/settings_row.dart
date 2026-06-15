import 'package:developers_hub_corporation_intern/theme.dart';
import 'package:flutter/material.dart';

class SettingsRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback? onTap;
  final BorderRadius borderRadius;
  final bool showDivider;

  const SettingsRow({
    super.key,
    required this.icon,
    required this.label,
    this.onTap,
    this.borderRadius = BorderRadius.zero,
    this.showDivider = true,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: borderRadius,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(
          border: showDivider
              ? const Border(bottom: BorderSide(color: AppColors.hairline))
              : null,
        ),
        child: Row(
          children: [
            Icon(icon, size: 22, color: AppColors.ink),
            const SizedBox(width: 14),
            Expanded(
              child: Text(
                label,
                style: const TextStyle(
                  fontSize: 15,
                  color: AppColors.ink,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Icon(
              Icons.chevron_right_rounded,
              size: 20,
              color: AppColors.slate.withOpacity(0.6),
            ),
          ],
        ),
      ),
    );
  }
}