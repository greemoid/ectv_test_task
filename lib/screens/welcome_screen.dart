import 'package:ectv_test_task/common/app_logo.dart';
import 'package:ectv_test_task/common/app_text_styles.dart';
import 'package:ectv_test_task/common/onboarding_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 600),
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  const SizedBox(height: 60),
                  Expanded(
                    child: Animate(
                      effects: [FadeEffect()],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppLogo(),
                          const SizedBox(height: 40),
                          Text(
                            'Welcome to English Club TV',
                            textAlign: TextAlign.center,
                            style: AppTextStyles.heading,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Boost your English with curated video lessons, real-life dialogues, and smart practice tools.',
                            textAlign: TextAlign.center,
                            style: AppTextStyles.subtitle,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: OnboardingButton(
                      onPressed: () => context.go('/info'),
                      buttonText: 'Get Started',
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
