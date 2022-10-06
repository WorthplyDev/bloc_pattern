import 'package:bloc_demo/src/screen/splash/splash_view.dart';
import 'package:go_router/go_router.dart';

///Routes Name
///Add new screen here with there path neme
const String splashView = "/";

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: splashView,
      builder: (context, state) {
        return const {{filename.pascalCase()}}();
      },
    ),

  ],
);
