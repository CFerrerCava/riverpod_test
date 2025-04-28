import 'package:riverpod_test/features/weather_app/domain/weather_app_entities.dart';

class WeatherListModel {
  WeatherListModel({required this.weatherList});

  factory WeatherListModel.fromHourlyList(List<Hourly> hourlies) {
    final weatherList = hourlies.map(WeatherInfoModel.toHourly).toList();
    return WeatherListModel(weatherList: weatherList);
  }

  List<WeatherInfoModel> weatherList;
}
