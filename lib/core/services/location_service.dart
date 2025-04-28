import 'package:location/location.dart';

class LocationService {
  final Location _location = Location();

  Future<bool> requestPermission() async {
    final permission = await _location.requestPermission();
    return permission == PermissionStatus.granted;
  }

  Future<bool> isServiceEnabled() async {
    return _location.serviceEnabled();
  }

  Future<LocationData?> getCurrentLocation() async {
    try {
      final result = await onPermission();
      if (!result) return null;
      final locationResult = await _location.getLocation();
      return locationResult;
    } catch (e) {
      return null;
    }
  }

  Future<bool> onPermission() async {
    final serviceEnabled = await _location.serviceEnabled();
    if (!serviceEnabled) {
      final enabled = await _location.requestService();
      if (!enabled) {
        return false;
      }
    }

    final permissionGranted = await requestPermission();
    if (!permissionGranted) {
      return false;
    }
    return true;
  }

  Stream<LocationData> getLocationStream() {
    return _location.onLocationChanged;
  }
}
