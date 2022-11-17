import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

/// StateNotifier for [localeProvider].
class LocaleNotifier extends StateNotifier<Locale?> {
  /// We initialize the locale with null, the system locale.
  LocaleNotifier() : super(null) {
    // Get possible stored locale config
    final boxLocale = Hive.box<dynamic>('localConfig').get('locale') as String?;
    // Set app locale
    state = boxLocale != null ? Locale(boxLocale) : null;
  }

  /// Change the current [Locale]. Use null for system locale.
  Future<void> setLocale(Locale? locale) async {
    // Set app locale
    state = locale;
    // Save on local storage
    await Hive.box<dynamic>('localConfig').put('locale', locale?.languageCode);
  }

  /// Set [Locale] to the system locale
  Future<void> setSystem() async {
    await setLocale(null);
  }

  /// Toggle the locale, using supported locales, and system locale as well.
  Future<void> toggle() async {
    const locales = AppLocalizations.supportedLocales;
    if (locales.isEmpty) {
      // Exit to avoid errors, system locale is set by default
      return;
    }
    final localeIdx = state != null ? locales.indexOf(state!) : -1;
    if (localeIdx == -1) {
      // Set the first supported locale if is system or unsupported locale.
      await setLocale(locales.first);
    } else if (localeIdx == locales.length - 1) {
      // Set the system locale after the last supported locale.
      await setLocale(null);
    } else {
      // Set the next supported locale.
      await setLocale(locales[localeIdx + 1]);
    }
  }
}

/// App [Locale] provider
final localeProvider = StateNotifierProvider<LocaleNotifier, Locale?>((ref) {
  return LocaleNotifier();
});
