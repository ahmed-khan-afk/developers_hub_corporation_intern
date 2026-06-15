import 'package:developers_hub_corporation_intern/high_level_widgets/profile_summary_card.dart';
import 'package:developers_hub_corporation_intern/high_level_widgets/settings_group.dart';
import 'package:developers_hub_corporation_intern/low%20level%20widgets/icon_badge.dart';
import 'package:developers_hub_corporation_intern/low%20level%20widgets/outline_action_button.dart';
import 'package:developers_hub_corporation_intern/low%20level%20widgets/section_label.dart';
import 'package:developers_hub_corporation_intern/theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      color: AppColors.ink,
                      letterSpacing: -0.5,
                    ),
                  ),
                  IconBadge(
                    icon: Icons.notifications_none_rounded,
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(height: 24),
              ProfileSummaryCard(
                initials: 'AK',
                name: 'Ahmed Khan',
                subtitle: 'Flutter Intern · DevHub',
                onTap: () {},
              ),
              const SizedBox(height: 28),
              const SectionLabel(text: 'Account'),
              const SizedBox(height: 8),
              SettingsGroup(
                items: [
                  SettingsItemData(
                    icon: Icons.person_outline,
                    label: 'Edit profile',
                    onTap: () {},
                  ),
                  SettingsItemData(
                    icon: Icons.email_outlined,
                    label: 'Email & contact info',
                    onTap: () {},
                  ),
                  SettingsItemData(
                    icon: Icons.badge_outlined,
                    label: 'Internship details',
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const SectionLabel(text: 'Preferences'),
              const SizedBox(height: 8),
              SettingsGroup(
                items: [
                  SettingsItemData(
                    icon: Icons.notifications_outlined,
                    label: 'Notifications',
                    onTap: () {},
                  ),
                  SettingsItemData(
                    icon: Icons.dark_mode_outlined,
                    label: 'Appearance',
                    onTap: () {},
                  ),
                  SettingsItemData(
                    icon: Icons.language_outlined,
                    label: 'Language',
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const SectionLabel(text: 'Security'),
              const SizedBox(height: 8),
              SettingsGroup(
                items: [
                  SettingsItemData(
                    icon: Icons.lock_outline,
                    label: 'Change password',
                    onTap: () {},
                  ),
                  SettingsItemData(
                    icon: Icons.shield_outlined,
                    label: 'Privacy & security',
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(height: 32),
              OutlineActionButton(
                icon: Icons.logout_rounded,
                label: 'Sign out',
                onPressed: () {
                 Navigator.pop(context);
                },
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
