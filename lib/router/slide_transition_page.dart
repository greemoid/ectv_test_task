import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

CustomTransitionPage slideTransitionPage({
  required LocalKey key,
  required Widget child,
  bool reverse = false,
}) {
  return CustomTransitionPage(
    key: key,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      final beginOffset =
          reverse ? const Offset(-1.0, 0) : const Offset(1.0, 0);
      final endOffset = Offset.zero;
      final tween = Tween<Offset>(
        begin: beginOffset,
        end: endOffset,
      ).chain(CurveTween(curve: Curves.easeInOut));

      return SlideTransition(position: animation.drive(tween), child: child);
    },
  );
}
