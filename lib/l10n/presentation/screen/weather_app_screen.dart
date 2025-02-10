import 'package:flutter/material.dart';
import 'package:riverpod_test/core/utils/font_style.dart';
import 'package:riverpod_test/l10n/presentation/widgets/weather_background.dart';
import 'package:riverpod_test/l10n/presentation/widgets/weather_body.dart';

class WeatherAppScreen extends StatelessWidget {
  const WeatherAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: $font.textTheme,
      ),
      child: const Scaffold(
        body: Stack(
          children: [
            WeatherBackground(),
            WeatherBody(),
          ],
        ),
      ),
    );
  }
}
