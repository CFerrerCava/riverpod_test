import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/features/theme_switcher/presentation/providers/theme_switcher_provider.dart';

class ThemeSwitcherScreen extends ConsumerWidget {
  const ThemeSwitcherScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Switcher - currently ${themeMode.name}'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Select Theme'),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    ref.read(themeModeProvider.notifier).toggleTheme();
                  },
                  child: const Text('change'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
