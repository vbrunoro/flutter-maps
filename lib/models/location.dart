import 'package:flutter_maps/models/location_data.dart';

/// Location model which include location: name, label, latitude, longitude
class Location {
  /// const constructor of the Location model
  const Location({
    required this.name,
    required this.label,
    required this.latitude,
    required this.longitude,
  });

  /// returns the instance of Location based on LocationData
  factory Location.fromLocationData(LocationData data) {
    return Location(
      name: data.name,
      label: data.label,
      latitude: data.latitude,
      longitude: data.longitude,
    );
  }

  final String name;

  final String label;

  final double latitude;

  final double longitude;
}
