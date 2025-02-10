import 'package:dio/dio.dart';
import 'package:riverpod_test/core/services/shared_preferences_service.dart';

class AuthInterceptor {
  InterceptorsWrapper create() {
    return InterceptorsWrapper(
      onRequest: (options, handler) async {
        // you can add your token here
        final shared = SharedPreferencesService();
        final token = await shared.getWeatherApiKey();
        if (token?.isNotEmpty ?? false) {
          options.headers.addAll({
            'Content-Type': 'application/json',
            'Authorization': token,
          });
        }

        /// also you can configure other options
        handler.next(options);
      },
    );
  }
}
