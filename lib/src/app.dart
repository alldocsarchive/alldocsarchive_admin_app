import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:alldocsarchive_admin_app/src/providers/locale_provider.dart';
import 'package:alldocsarchive_admin_app/src/screens/routes.dart';
import 'package:alldocsarchive_admin_app/src/themes/themes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

/// App Widget
class App extends ConsumerWidget {
  /// App Widget
  App({super.key});

  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      DashboardRoutes.route,
      LoginRoutes.route,
      SignupRoutes.route,
    ],
    redirect: (context, state) {
      // All public access paths
      final publicPaths = [
        LoginRoutes.route.path,
        SignupRoutes.route.path,
      ];

      // Get current Firebase user
      final currentUser = FirebaseAuth.instance.currentUser;

      // Redirect if not logged in and the path is protected
      if (currentUser == null && !publicPaths.contains(state.subloc)) {
        return LoginRoutes.route.path;
      }

      return null;
    },
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(localeProvider);

    return AdaptiveTheme(
      light: LightTheme.data.copyWith(
        extensions: [CustomColors.light],
      ),
      dark: DarkTheme.data.copyWith(
        extensions: [CustomColors.dark],
      ),
      initial: AdaptiveThemeMode.light,
      builder: (theme, darkTheme) => MaterialApp.router(
        // Providing a restorationScopeId allows the Navigator built by the
        // MaterialApp to restore the navigation stack when a user leaves and
        // returns to the app after it has been killed while running in the
        // background.
        restorationScopeId: 'alldocsarchive',

        // Provide the generated AppLocalizations to the MaterialApp. This
        // allows descendant Widgets to display the correct translations
        // depending on the user's locale.
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        locale: locale,

        // Use AppLocalizations to configure the correct application title
        // depending on the user's locale.
        //
        // The appTitle is defined in .arb files found in the localization
        // directory.
        onGenerateTitle: (BuildContext context) =>
            AppLocalizations.of(context)!.appTitle,

        // Define a light and dark color theme.
        theme: theme,
        darkTheme: darkTheme,

        // Define routing configuration
        routerConfig: _router,

        // A wrapper that helps child widgets resize/scale to different
        // screen dimensions.
        builder: (context, child) => ResponsiveWrapper.builder(
          child,
          defaultScale: true,
          minWidth: 360,
          defaultName: MOBILE,
          breakpoints: const [
            ResponsiveBreakpoint.resize(360),
            ResponsiveBreakpoint.resize(480, name: MOBILE),
            ResponsiveBreakpoint.resize(640, name: 'MOBILE_LARGE'),
            // ResponsiveBreakpoint.autoScale(850, name: TABLET),
            ResponsiveBreakpoint.resize(850, name: TABLET),
            ResponsiveBreakpoint.resize(1080, name: DESKTOP),
          ],
          // background: Container(
          //   color: Color(0xFFF5F5F5),
          // ),
        ),

        // Hid the debug banner
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
