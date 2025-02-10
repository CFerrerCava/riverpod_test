import 'package:riverpod_test/features/weather_app/data/dtos/abstract_client.dart';
import 'package:riverpod_test/features/weather_app/data/interceptors/auth_interceptor.dart';

class ImplClient extends AbstractDioClient {
  ImplClient()
      : super(
          baseUrl: 'https://api.stormglass.io/v2',
          enableLogging: false,
          customInterceptors: [
            AuthInterceptor().create(),
          ],
        );
}
