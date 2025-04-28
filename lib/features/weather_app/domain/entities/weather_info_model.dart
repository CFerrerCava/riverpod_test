import 'package:intl/intl.dart';
import 'package:riverpod_test/core/utils/weather_enums.dart';
import 'package:riverpod_test/features/weather_app/domain/weather_app_entities.dart';

class WeatherInfoModel {
  WeatherInfoModel({
    required this.weatherDescription,
    required this.temperature,
    required this.windSpeed,
    required this.humidity,
    required this.time,
    required this.weatherType,
  });

  factory WeatherInfoModel.toHourly(Hourly response) {
    return WeatherInfoModel(
      weatherDescription: getWeatherDescription(response),
      temperature: response.values!['temperature']!.toString(),
      windSpeed: response.values!['windSpeed']!.toString(),
      humidity: response.values!['humidity']!.toString(),
      time: DateFormat('hh a').format(response.time!),
      weatherType: getWeatherType(response),
    );
  }

  static List<String> getWeatherDescription(Hourly hourly) {
    final weatherDescription = <String>[];
    final weatherType = getWeatherType(hourly);

    switch (weatherType) {
      case WeatherType.overcast:
        weatherDescription.addAll(['its', 'fucking', 'overcast']);
      case WeatherType.cloudy:
        weatherDescription.addAll(['its', 'fucking', 'cloudy']);
      case WeatherType.heavyRain:
        weatherDescription.addAll(['its', 'fucking', 'pouring']);
      case WeatherType.rainy:
        weatherDescription.addAll(['its', 'fucking', 'raining']);
      case WeatherType.heavySnow:
        weatherDescription.addAll(['holy', 'shit', 'snowing', 'heavily']);
      case WeatherType.snowy:
        weatherDescription.addAll(['damn', 'its', 'snowing']);
      case WeatherType.hail:
        weatherDescription.addAll(['watch', 'out', 'hailing']);
      case WeatherType.partlyCloudy:
        weatherDescription.addAll(['kinda', 'cloudy']);
      case WeatherType.sunny:
        weatherDescription.addAll(['fuck', 'love', 'sunny']);
      case WeatherType.foggy:
        weatherDescription.addAll(["can't", 'see', 'shit', 'foggy']);
      case WeatherType.thunderstorm:
        weatherDescription.addAll(['holy', 'shit', 'thunderstorm']);
      case WeatherType.unknown:
        weatherDescription.addAll(['weather', 'unknown']);
    }

    weatherDescription.add('now');
    return weatherDescription;
  }

  static WeatherType getWeatherType(Hourly hourly) {
    if (hourly.values!['cloudCover']! >= 100 &&
        hourly.values!['rainIntensity']! == 0) {
      return WeatherType.overcast;
    } else if (hourly.values!['cloudCover']! > 80 &&
        hourly.values!['cloudCover']! < 100) {
      return WeatherType.cloudy;
    } else if (hourly.values!['rainIntensity']! > 0.5) {
      return WeatherType.heavyRain;
    } else if (hourly.values!['rainIntensity']! > 0) {
      return WeatherType.rainy;
    } else if (hourly.values!['snowIntensity']! > 0.5) {
      return WeatherType.heavySnow;
    } else if (hourly.values!['snowIntensity']! > 0) {
      return WeatherType.snowy;
    } else if (hourly.values!['hailProbability']! > 65) {
      return WeatherType.hail;
    } else if (hourly.values!['cloudCover']! > 30) {
      return WeatherType.partlyCloudy;
    } else {
      return WeatherType.sunny;
    }
  }

  List<String> weatherDescription;
  String temperature;
  String windSpeed;
  String humidity;
  String time;
  WeatherType weatherType;
}
