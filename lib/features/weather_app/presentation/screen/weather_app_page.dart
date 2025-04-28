import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/core/utils/font_style.dart';
import 'package:riverpod_test/features/weather_app/presentation/screen/weather_app_view.dart';

class WeatherAppPage extends ConsumerWidget {
  const WeatherAppPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Theme(
      data: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: $font.textTheme,
      ),
      child: const WeatherAppView(),
    );
  }
}
