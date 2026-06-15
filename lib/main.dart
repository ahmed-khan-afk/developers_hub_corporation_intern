import 'package:developers_hub_corporation_intern/login_form.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  // Layout constants
  static const double _mobileCardHeightFactor = 0.5;
  static const double _desktopCardHeightFactor = 0.8;
  static const double _cardWidthFactor = 0.8;
  static const double _mobileBreakpoint = 600;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double width = size.width;
    final double height = size.height;
    final bool isMobile = width < _mobileBreakpoint;
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surfaceContainerHighest,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              height: isMobile
                  ? height * _mobileCardHeightFactor
                  : height * _desktopCardHeightFactor,
              width: width * _cardWidthFactor,
              decoration: BoxDecoration(
                color: colorScheme.surfaceContainerLow,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    spreadRadius: 1,
                    blurRadius: 9,
                    offset: const Offset(3, 3),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    spreadRadius: 2,
                    blurRadius: 9,
                    offset: const Offset(-3, -3),
                  ),
                ],
              ),
              child: LoginForm(width: width, height: height),
            ),
          ),
        ),
      ),
    );
  }
}