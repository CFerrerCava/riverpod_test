import 'package:retrofit/retrofit.dart';

extension RetrofitExtension on HttpResponse {
  bool get isSuccessful =>
      (response.statusCode ?? 500) >= 200 && (response.statusCode ?? 500) < 300;
  bool get isFailed => !isSuccessful;
}
