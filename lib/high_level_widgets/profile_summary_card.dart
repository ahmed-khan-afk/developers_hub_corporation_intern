import 'package:developers_hub_corporation_intern/low%20level%20widgets/avatar.dart';
import 'package:developers_hub_corporation_intern/theme.dart';
import 'package:flutter/material.dart';

class ProfileSummaryCard extends StatelessWidget {
  final String initials;
  final String name;
  final String subtitle;
  final VoidCallback? onTap;

  const ProfileSummaryCard({
    super.key,
    required this.initials,
    required this.name,
    required this.subtitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [AppColors.ink, Color(0xFF353A66)],
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            AppAvatar(initials: initials),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 13.5,
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.chevron_right_rounded,
              color: Colors.white.withOpacity(0.7),
            ),
          ],
        ),
      ),
    );
  }
}