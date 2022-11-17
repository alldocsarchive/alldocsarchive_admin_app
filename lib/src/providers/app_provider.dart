import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

///
class AppState extends Equatable {
  ///
  const AppState({
    required this.locale,
  });

  ///
  final Locale locale;

  ///
  // void changeLocale() {
  //   print(locale?.countryCode);
  //   if (locale?.countryCode != 'en') {
  //     locale = const Locale('en');
  //   } else {
  //     locale = const Locale('es');
  //   }
  // }

  @override
  List<Object> get props => [locale];
}

/// Providers are declared globally and specify how to create a state
final appProvider = StateProvider<AppState>(
  (ref) => const AppState(locale: Locale('en')),
);
