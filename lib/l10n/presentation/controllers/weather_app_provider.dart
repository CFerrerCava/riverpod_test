import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/core/utils/retrofit_extension.dart';
import 'package:riverpod_test/features/weather_app/data/dtos/abstract_client.dart';
import 'package:riverpod_test/features/weather_app/data/dtos/impl_client.dart';
import 'package:riverpod_test/features/weather_app/data/repositories/weather_app_repository.dart';
import 'package:riverpod_test/features/weather_app/domain/weather_app_entities.dart';

final clientProvider = Provider<AbstractDioClient>(
  (ref) => ImplClient(),
);

final repositoryProvider = Provider<WeatherAppRepositoryMethods>(
  (ref) => WeatherAppRepoImpl(ref.watch(clientProvider).client),
);

final getWeatherProvider =
    FutureProvider.family<WeatherResponse?, Map<String, dynamic>>(
        (ref, queries) async {
  try {
    final response = await ref.watch(repositoryProvider).getWeather(queries);

    if (response.isSuccessful) {
      return response.data;
    } else {
      throw Exception(response);
    }
  } catch (e) {
    return null;
  }
});
