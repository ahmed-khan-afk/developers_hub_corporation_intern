import 'package:developers_hub_corporation_intern/low%20level%20widgets/settings_row.dart';
import 'package:developers_hub_corporation_intern/theme.dart';
import 'package:flutter/material.dart';

class SettingsItemData {
  final IconData icon;
  final String label;
  final VoidCallback? onTap;

  const SettingsItemData({
    required this.icon,
    required this.label,
    this.onTap,
  });
}

class SettingsGroup extends StatelessWidget {
  final List<SettingsItemData> items;

  const SettingsGroup({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.hairline),
      ),
      child: Column(
        children: List.generate(items.length, (index) {
          final item = items[index];
          final isFirst = index == 0;
          final isLast = index == items.length - 1;

          return SettingsRow(
            icon: item.icon,
            label: item.label,
            onTap: item.onTap,
            showDivider: !isLast,
            borderRadius: BorderRadius.vertical(
              top: isFirst ? const Radius.circular(14) : Radius.zero,
              bottom: isLast ? const Radius.circular(14) : Radius.zero,
            ),
          );
        }),
      ),
    );
  }
}