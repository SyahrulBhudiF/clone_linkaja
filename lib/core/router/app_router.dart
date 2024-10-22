import 'package:clone_linkaja/features/home/presentation/pages/main_page.dart';
import 'package:clone_linkaja/shared/widget/splash.dart';
import 'package:go_router/go_router.dart';

import '../../features/history/presentation/pages/history_page.dart';
import '../../features/home/presentation/pages/home_page.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: '/splash', // Start at the splash screen
    routes: [
      GoRoute(
        path: '/splash',
        builder: (context, state) => const Splash(), // Splash screen
      ),
      GoRoute(
        path: '/',
        builder: (context, state) => MainPage(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => HomePage(),
      ),
    ],
  );
}

