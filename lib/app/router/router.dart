import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:talker_flutter/talker_flutter.dart';

import '../../di/di.dart';
import '../features/features.dart';
import '../lab_stage.dart';
import '../widgets/app_error.dart';

GoRouter createRouter(LabStage stage) => GoRouter(
  initialLocation: '/home',
  observers: [TalkerRouteObserver(talker)],
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/home',
      builder: (_, state) => StaticHomeScreen(canOpen: false),
    ),
    GoRoute(
      path: '/logs',
      builder: (_, state) => TalkerScreen(talker: talker),
    ),
  ],
  errorBuilder: (context, state) => Scaffold(
    appBar: AppBar(title: const Text('Страница не найдена')),
    body: AppError(
      description: 'Такого адреса нет в приложении.',
      onRetry: () => context.go('/home'),
    ),
  ),
);
