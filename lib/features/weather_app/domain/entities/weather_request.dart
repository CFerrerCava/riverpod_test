class WeatherRequest {
  WeatherRequest({
    required this.location,
    this.timesteps,
  });
  String location;
  String? timesteps;
}
