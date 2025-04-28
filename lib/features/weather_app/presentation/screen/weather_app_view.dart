import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/features/weather_app/presentation/controllers/weather_app_provider.dart';
import 'package:riverpod_test/features/weather_app/presentation/presentation.dart';

class WeatherAppView extends ConsumerStatefulWidget {
  const WeatherAppView({super.key});

  @override
  ConsumerState<WeatherAppView> createState() => _WeatherAppViewState();
}

class _WeatherAppViewState extends ConsumerState<WeatherAppView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final weatherAsyncValue = ref.watch(weatherProvider);

    return weatherAsyncValue.when(
      data: (data) => Scaffold(
        body: Stack(
          children: [
            WeatherBackground(
              data: data.weatherList.first,
            ),
            WeatherBody(
              data: data.weatherList.first,
            ),
          ],
        ),
      ),
      error: (error, stackTrace) => const Text('Error'),
      loading: () => const CircularProgressIndicator(),
    );
  }
}
