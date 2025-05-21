import 'package:ectv_test_task/common/app_text_styles.dart';
import 'package:ectv_test_task/common/onboarding_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';

class ActionScreen extends StatelessWidget {
  const ActionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final features = [
      '📺 Over 1000 video tutorials',
      '🆕 5 new episodes every week',
      '🎥 Live broadcasts for all levels',
      '🔓 2 episodes of each program are free',
      '👑 Premium features from \$1.17/month',
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: BackButton(
          onPressed: () => context.go('/info', extra: 'reverse'),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 600),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Image.asset(
                                'assets/images/ectv_logo.png',
                                width: 120,
                                height: 120,
                              )
                              .animate()
                              .fade(duration: 600.ms)
                              .slideY(begin: -0.3),

                          const SizedBox(height: 16),

                          Text(
                            'English Club TV',
                            style: AppTextStyles.heading,
                          ).animate().fade().slideY(begin: -0.2, delay: 300.ms),

                          const SizedBox(height: 24),

                          ...features.map(
                            (text) => Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 4.0,
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      text,
                                      style: AppTextStyles.featureText,
                                    ),
                                  ),
                                ],
                              ),
                            ).animate().fade().slideX(begin: -0.2),
                          ),

                          const SizedBox(height: 24),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 600),
                  child: OnboardingButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Onboarding passed!')),
                      );
                    },
                    buttonText: 'Subscribe',
                  ).animate().fade(delay: 600.ms).slideY(begin: 0.3),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
