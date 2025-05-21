import 'package:ectv_test_task/router/slide_transition_page.dart';
import 'package:go_router/go_router.dart';

import '../screens/action_screen.dart';
import '../screens/info_screen.dart';
import '../screens/welcome_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/welcome',
  routes: [
    GoRoute(
      path: '/welcome',
      pageBuilder:
          (context, state) => slideTransitionPage(
            key: state.pageKey,
            child: const WelcomeScreen(),
            reverse: state.extra == 'reverse',
          ),
    ),
    GoRoute(
      path: '/info',
      pageBuilder:
          (context, state) => slideTransitionPage(
            key: state.pageKey,
            child: const InfoScreen(),
            reverse: state.extra == 'reverse',
          ),
    ),
    GoRoute(
      path: '/action',
      pageBuilder:
          (context, state) => slideTransitionPage(
            key: state.pageKey,
            child: const ActionScreen(),
            reverse: state.extra == 'reverse',
          ),
    ),
  ],
);
