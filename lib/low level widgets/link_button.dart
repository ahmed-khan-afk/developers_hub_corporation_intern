import 'dart:ui';

import 'package:flutter/material.dart';

class AppLinkButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const AppLinkButton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.black,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}