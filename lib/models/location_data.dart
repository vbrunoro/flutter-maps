import 'package:json_annotation/json_annotation.dart';
part 'location_data.g.dart';

@JsonSerializable(createToJson: false)
class LocationData {
  LocationData({
    required this.name,
    required this.label,
    required this.latitude,
    required this.longitude,
  });

  /// it returns LocationData from json
  factory LocationData.fromJson(Map<String, dynamic> json) =>
      _$LocationDataFromJson(json);

  final String name;
  final String label;
  final double latitude;
  final double longitude;
}
