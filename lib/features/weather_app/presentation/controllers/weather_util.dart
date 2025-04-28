import 'package:riverpod_test/core/utils/image_service.dart';
import 'package:riverpod_test/core/utils/weather_enums.dart';

class WeatherUtil {
  static String getWeatherIcon(WeatherType type) {
    switch (type) {
      case WeatherType.sunny:
        return ImageService.dayWind.value;
      case WeatherType.cloudy:
        return ImageService.dayCloudy.value;
      case WeatherType.rainy:
        return ImageService.dayRain.value;
      case WeatherType.snowy:
        return ImageService.daySnow.value;
      case WeatherType.foggy:
        return ImageService.dayCloudy.value;
      case WeatherType.thunderstorm:
        return ImageService.dayStorm.value;
      case WeatherType.unknown:
        return ImageService.dayWind.value;
      case WeatherType.overcast:
        return ImageService.daySnow.value;
      case WeatherType.heavyRain:
        return ImageService.dayStorm.value;
      case WeatherType.heavySnow:
        return ImageService.daySnow.value;
      case WeatherType.hail:
        return ImageService.dayWind.value;
      case WeatherType.partlyCloudy:
        return ImageService.dayCloudy.value;
    }
  }
}
