import 'package:riverpod_test/features/weather_app/data/dtos/abstract_client.dart';
import 'package:riverpod_test/features/weather_app/data/interceptors/auth_interceptor.dart';

class ImplClient extends AbstractDioClient {
  ImplClient()
      : super(
          baseUrl: 'https://api.tomorrow.io/v4',
          customInterceptors: [
            AuthInterceptor().create(),
          ],
          customHeaders: {
            'accept-encoding': 'deflate, gzip, br',
          },
        );
}
