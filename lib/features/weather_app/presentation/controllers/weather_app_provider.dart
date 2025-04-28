import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/core/services/location_service.dart';
import 'package:riverpod_test/core/utils/location_extension.dart';
import 'package:riverpod_test/core/utils/retrofit_extension.dart';
import 'package:riverpod_test/features/weather_app/data/dtos/abstract_client.dart';
import 'package:riverpod_test/features/weather_app/data/dtos/impl_client.dart';
import 'package:riverpod_test/features/weather_app/data/repositories/weather_app_repository.dart';
import 'package:riverpod_test/features/weather_app/domain/entities/weather_list_model.dart';
import 'package:riverpod_test/features/weather_app/domain/weather_app_entities.dart';

final _locationService = LocationService();

final clientProvider = Provider<AbstractDioClient>(
  (ref) => ImplClient(),
);

final repositoryProvider = Provider<WeatherAppRepositoryMethods>(
  (ref) => WeatherAppRepoImpl(ref.watch(clientProvider).client),
);

final weatherProvider =
    StateNotifierProvider<WeatherNotifier, AsyncValue<WeatherListModel>>((ref) {
  return WeatherNotifier(repository: ref.read(repositoryProvider));
});

class WeatherNotifier extends StateNotifier<AsyncValue<WeatherListModel>> {
  WeatherNotifier({required this.repository}) : super(const AsyncLoading()) {
    getWeather();
  }

  final WeatherAppRepositoryMethods repository;

  Future<void> getWeather() async {
    try {
      final locationData = await _locationService.getCurrentLocation();
      final request = WeatherRequest(
        location: locationData?.getString ?? 'New York',
        timesteps: '1h',
      );
      final response = await repository.getWeather(request);
      if (response.data.timelines?.hourly?.isEmpty ?? true) {
        state = AsyncError('Empty', StackTrace.current);
      } else {
        final weatherInfo =
            WeatherListModel.fromHourlyList(response.data.timelines!.hourly!);
        if (response.isSuccessful) {
          state = AsyncData(weatherInfo);
        } else {
          throw Exception(response);
        }
      }
    } catch (e) {
      state = AsyncData(WeatherListModel(weatherList: []));
    }
  }
}
