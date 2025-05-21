import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/ectv_logo.png',
      height: 120,
    ).animate().fadeIn(duration: 600.ms).slideY(begin: -0.3);
  }
}
