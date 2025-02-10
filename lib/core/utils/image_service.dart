enum ImageType {
  png('.png'),
  jpg('.jpg'),
  jpeg('.jpeg'),
  gif('.gif'),
  webp('.webp'),
  bmp('.bmp'),
  svg('.svg');

  const ImageType(this.value);
  final String value;
}

enum ImageService {
  dayCloudy('assets/icons/weather_icons/day_cloud.png', ImageType.png),
  nightCloud('assets/icons/weather_icons/night_cloud.png', ImageType.png),
  dayRain('assets/icons/weather_icons/day_rain.png', ImageType.png),
  nightRain('assets/icons/weather_icons/night_rain.png', ImageType.png),
  daySnow('assets/icons/weather_icons/day_snow.png', ImageType.png),
  nightSnow('assets/icons/weather_icons/night_snow.png', ImageType.png),
  dayStorm('assets/icons/weather_icons/day_storm.png', ImageType.png),
  nightMoon('assets/icons/weather_icons/night_moon.png', ImageType.png),
  dayWind('assets/icons/weather_icons/day_wind.png', ImageType.png),
  nightWind('assets/icons/weather_icons/night_wind.png', ImageType.png),
  snow('assets/icons/weather_icons/snow.png', ImageType.png);

  const ImageService(this.value, this.type);
  final String value;
  final ImageType type;
}
