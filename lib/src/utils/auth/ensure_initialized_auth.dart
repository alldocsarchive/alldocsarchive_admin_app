import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';

/// Make sure Firebase Auth is initialized
Future<void> ensureInitializedAuth() async {
  var isAuthInitialized = false;
  final authStateSubscription = FirebaseAuth.instance.authStateChanges().listen(
        (_) => isAuthInitialized = true,
      );
  while (!isAuthInitialized) {
    await Future.delayed(const Duration(milliseconds: 200), () {});
  }
  await authStateSubscription.cancel();
}
