import 'package:flutter_gdsc/features/details/view/details_view.dart';
import 'package:flutter_gdsc/features/splash/view/splash_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/view/app_view.dart';

abstract class AppRouter {
  static const String splash = '/'; // initial route
  static const String home = '/home';
  static const String details = '/details';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: splash,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: home,
        builder: (context, state) => const AppView(),
      ),
      GoRoute(
        path: details,
        builder: (context, state) {
          Map<String, dynamic> extra = state.extra! as Map<String, dynamic>;
          return DetailsView(
            movieId: extra['id'] as int,
            movieTitle: extra['title'] as String,
          );
        },
      )
    ],
  );
}
