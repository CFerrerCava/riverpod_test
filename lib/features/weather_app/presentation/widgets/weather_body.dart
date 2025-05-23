import 'package:flutter/material.dart';
import 'package:riverpod_test/features/weather_app/domain/weather_app_entities.dart';
import 'package:riverpod_test/features/weather_app/presentation/controllers/weather_util.dart';
import 'package:riverpod_test/features/weather_app/presentation/widgets/weather_wow_description_widget.dart';

class WeatherBody extends StatelessWidget {
  const WeatherBody({super.key, this.data});

  final WeatherInfoModel? data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80, bottom: 40, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            WeatherUtil.getWeatherIcon(data!.weatherType),
            width: 150,
          ),
          const Spacer(),
          WeatherWowDescriptionWidget(weatherInfoModel: data!),
          const SizedBox(height: 150),
          const Divider(
            color: Colors.black,
            thickness: 0.5,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 40,
                width: 0.7,
                color: Colors.black,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Text(
                        'Humidity: ${data!.humidity}%   Wind: ${data!.windSpeed}km/h',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: const Color.fromARGB(255, 113, 113, 113),
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                    Text(
                      'Temperature: ${data!.temperature}°C',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 40,
                width: 0.7,
                color: Colors.black,
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    data!.time,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontSize: 55,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.5,
                          height: 0.8,
                        ),
                    textAlign: TextAlign.end,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
