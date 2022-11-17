import 'package:alldocsarchive_admin_app/src/screens/dashboard/dashboard_screen.dart';
import 'package:go_router/go_router.dart';

/// Root screen routes
class DashboardRoutes {
  /// GoRoute config for Root screen
  static final route = GoRoute(
    path: '/',
    pageBuilder: (context, state) => NoTransitionPage(
      key: state.pageKey,
      child: const DashboardScreen(),
    ),
  );
}
