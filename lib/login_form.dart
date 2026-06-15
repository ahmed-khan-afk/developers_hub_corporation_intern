import 'package:developers_hub_corporation_intern/high_level_widgets/email_field.dart';
import 'package:developers_hub_corporation_intern/high_level_widgets/password_field.dart';
import 'package:developers_hub_corporation_intern/home_screen.dart';
import 'package:developers_hub_corporation_intern/low%20level%20widgets/link_button.dart';
import 'package:developers_hub_corporation_intern/low%20level%20widgets/primary_button.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  final double width;
  final double height;
  final ValueChanged<String>? onLogin;

  const LoginForm({
    super.key,
    required this.width,
    required this.height,
    this.onLogin,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _isLoading = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isLoading = true);
    try {
      await Future.delayed(const Duration(seconds: 1));
      widget.onLogin?.call(_emailController.text.trim());
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  }

  void _onForgotPassword() {
    // TODO: navigate to forgot-password screen.
  }

  @override
  Widget build(BuildContext context) {
    final fieldWidth = widget.width * 0.5;

    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: fieldWidth,
            child: EmailField(controller: _emailController),
          ),
          const SizedBox(height: 8.0),
          SizedBox(
            width: fieldWidth,
            child: PasswordField(
              controller: _passwordController,
              onSubmitted: (_) => _submit(),
            ),
          ),
          SizedBox(
            width: fieldWidth,
            child: Align(
              alignment: Alignment.centerRight,
              child: AppLinkButton(
                label: 'Forgot Password?',
                onPressed: _onForgotPassword,
              ),
            ),
          ),
          const SizedBox(height: 50.0),
          AppPrimaryButton(
            label: 'Login',
            width: fieldWidth,
            height: widget.height * 0.07,
            isLoading: _isLoading,
            onPressed: _submit,
          ),
        ],
      ),
    );
  }
}
