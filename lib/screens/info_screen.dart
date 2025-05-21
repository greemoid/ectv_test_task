import 'package:ectv_test_task/common/app_logo.dart';
import 'package:ectv_test_task/common/app_text_styles.dart';
import 'package:ectv_test_task/common/onboarding_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: BackButton(
          onPressed: () => context.go('/welcome', extra: 'reverse'),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 600),
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          AppLogo(),
                          const SizedBox(height: 24),
                          Row(
                                children: [
                                  const SizedBox(width: 16),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Over 1000 video tutorials',
                                          style: AppTextStyles.title,
                                        ),
                                        Text(
                                          'First 2 episodes of each program are free.',
                                          style: AppTextStyles.subtitle,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                              .animate(delay: 200.ms)
                              .fadeIn(duration: 400.ms)
                              .slideY(begin: 0.3),
                          const SizedBox(height: 24),
                          Row(
                            children: [
                              const SizedBox(width: 16),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Weekly updates',
                                      style: AppTextStyles.title,
                                    ),
                                    Text(
                                      '5 new episodes every week to keep your learning fresh.',
                                      style: AppTextStyles.subtitle,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ).animate().fadeIn(duration: 400.ms).slideY(begin: 0.3),
                          const SizedBox(height: 24),
                          Row(
                                children: [
                                  const SizedBox(width: 16),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Live broadcasts',
                                          style: AppTextStyles.title,
                                        ),
                                        Text(
                                          'Learn with English Club TV & ECTV for Kids in real time.',
                                          style: AppTextStyles.subtitle,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                              .animate(delay: 400.ms)
                              .fadeIn(duration: 400.ms)
                              .slideY(begin: 0.3),
                          const SizedBox(height: 24),
                          Row(
                                children: [
                                  const SizedBox(width: 16),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'More with subscription',
                                          style: AppTextStyles.title,
                                        ),
                                        Text(
                                          'Offline mode, video quality choice, bookmarks, competitions and more.',
                                          style: AppTextStyles.subtitle,
                                        ),
                                        const SizedBox(height: 8),
                                        Text(
                                          'From \$1.17/month',
                                          style: AppTextStyles.subtitle
                                              .copyWith(
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                              .animate(delay: 600.ms)
                              .fadeIn(duration: 400.ms)
                              .slideY(begin: 0.3),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  SizedBox(
                    width: double.infinity,
                    child: OnboardingButton(
                      onPressed: () => context.go('/action'),
                      buttonText: 'Continue',
                    ).animate(delay: 800.ms).fadeIn().slideY(begin: 0.2),
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
