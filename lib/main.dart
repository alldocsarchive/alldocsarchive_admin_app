import 'package:alldocsarchive_admin_app/firebase_options.dart';
import 'package:alldocsarchive_admin_app/src/app.dart';
import 'package:alldocsarchive_admin_app/src/utils/auth/ensure_initialized_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  // This method required for initializations before calling runApp.
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  // Preserve Native Splash during initializations
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // Initialize Hive local storage
  if (kIsWeb) {
    // Multipurpose only local key-value storage
    await Hive.openBox<dynamic>('localConfig');
  } else {
    final appDocDir = await getApplicationSupportDirectory();
    final appDocPath = appDocDir.path;

    // Multipurpose only local key-value storage
    await Hive.openBox<dynamic>('localConfig', path: appDocPath);
  }

  // Initialize Firebase app
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Configure Firebase auth providers
  FirebaseUIAuth.configureProviders(
    const [
      // EmailAuthProvider(),
      // GoogleProviderConfiguration(
      //   clientId: '833567353053-gpku4eul8inujsotn47f65punae59730'
      //       '.apps.googleusercontent.com',
      //   scopes: ['email'],
      // ),
    ],
  );

  // For web: use URLs without '#' character
  usePathUrlStrategy();

  // Wait until receiving the first data from Firebase Auth
  await ensureInitializedAuth();

  // Remove Native Splash
  FlutterNativeSplash.remove();

  // Run the App
  runApp(
    // Adding ProviderScope enables Riverpod for the entire project
    ProviderScope(child: App()),
  );
}
