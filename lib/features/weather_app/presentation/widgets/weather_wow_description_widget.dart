import 'package:flutter/material.dart';
import 'package:riverpod_test/features/weather_app/domain/weather_app_entities.dart';

class WeatherWowDescriptionWidget extends StatelessWidget {
  const WeatherWowDescriptionWidget({
    required this.weatherInfoModel,
    super.key,
  });
  final WeatherInfoModel weatherInfoModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        weatherInfoModel.weatherDescription.length,
        (index) => Text(
          weatherInfoModel.weatherDescription[index],
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                fontSize: 90,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
                height: 0.9,
                foreground: index != 1 ? null : Paint()
                  ?..style = PaintingStyle.stroke
                  ..strokeWidth = 1,
              ),
        ),
      ),
    );
  }
}
