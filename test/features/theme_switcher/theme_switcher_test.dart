import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:riverpod_test/features/theme_switcher/presentation/providers/theme_switcher_provider.dart';

void main() {
  group('theme switcher test', () {
    test('Valid init state', () {
      final ref = ProviderContainer();
      expect(ref.read(themeModeProvider), ThemeMode.light);
    });
    test('Change state to dark', () {
      final ref = ProviderContainer();
      ref.read(themeModeProvider.notifier).toggleTheme();
      expect(ref.read(themeModeProvider), ThemeMode.dark);
    });

    test('Change to original state', () {
      final ref = ProviderContainer();
      ref.read(themeModeProvider.notifier).toggleTheme();
      expect(ref.read(themeModeProvider), ThemeMode.dark);

      ref.read(themeModeProvider.notifier).toggleTheme();
      expect(ref.read(themeModeProvider), ThemeMode.light);
    });
  });
}
