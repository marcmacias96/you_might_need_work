import 'package:go_router/go_router.dart';
import 'package:you_might_need_work/features/auth/auth.dart';

GoRouter getGoRouter() {
  return GoRouter(
    routes: [
      GoRoute(
        path: AuthPage.routePath,
        builder: (context, state) => const AuthPage(),
      ),
    ],
  );
}
