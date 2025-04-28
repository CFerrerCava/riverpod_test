import 'package:location/location.dart';

extension LocationExtension on LocationData {
  String get getString => '$latitude,$longitude';
}
