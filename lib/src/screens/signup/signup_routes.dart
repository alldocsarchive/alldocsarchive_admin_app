import 'package:alldocsarchive_admin_app/src/screens/signup/signup_screen.dart';
import 'package:go_router/go_router.dart';

/// Sign Up screen routes
class SignupRoutes {
  /// GoRoute config for Sign Up screen
  static final route = GoRoute(
    path: '/signup',
    pageBuilder: (context, state) => NoTransitionPage(
      key: state.pageKey,
      child: const SignupScreen(),
    ),
  );
}
