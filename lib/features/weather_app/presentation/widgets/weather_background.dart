import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:riverpod_test/features/weather_app/domain/weather_app_entities.dart';

class WeatherBackground extends StatelessWidget {
  const WeatherBackground({super.key, this.data});
  final WeatherInfoModel? data;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Column(
          children: [
            const Spacer(),
            DecoratedBox(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 201, 238, 255),
                    Color.fromARGB(255, 3, 80, 144),
                  ],
                  stops: [
                    0.35,
                    0.6,
                  ],
                ),
              ),
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height * .6,
                width: MediaQuery.sizeOf(context).width,
              ),
            ),
            const Spacer(),
          ],
        ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 300, sigmaY: 300),
          child: const Center(),
        ),
      ],
    );
  }
}
