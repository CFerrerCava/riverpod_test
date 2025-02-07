import 'package:flutter/material.dart';
import 'package:riverpod_test/features/counter/presentation/screens/counter_screen.dart';
import 'package:riverpod_test/features/home/home_screen.dart';
import 'package:riverpod_test/features/simple_notes/presentation/screen/simple_notes_screen.dart';
import 'package:riverpod_test/features/theme_switcher/presentation/screens/theme_switcher_screen.dart';

class Routes {
  // Prevent instantiation
  Routes._();

  static const String home = '/';
  static const String counter = '/counter';
  static const String themeSwitcher = '/theme-switcher';
  static const String simpleNotes = '/simple-notes';
  static const String profile = '/profile';
  static const String notifications = '/notifications';

  // You can add navigation methods here if needed
  static Map<String, Widget Function(BuildContext)> get routeNames => {
        home: (context) => const HomeScreen(),
        counter: (context) => const CounterScreen(),
        themeSwitcher: (context) => const ThemeSwitcherScreen(),
        simpleNotes: (context) => const SimpleNotesScreen(),
      };
}
