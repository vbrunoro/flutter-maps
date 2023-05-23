import 'package:flutter_maps/api/location_api_client.dart';
import 'package:flutter_maps/models/location.dart';

class LocationsRepository {
  const LocationsRepository({required LocationApiClient locationApiClient})
      : _locationApiClient = locationApiClient;

  final LocationApiClient _locationApiClient;

  Future<List<Location>> getLocations({required String location}) async {
    final locations = <Location>[];
    final locationsData =
        await _locationApiClient.getLocations(location: location);

    for (final data in locationsData) {
      locations.add(
        Location.fromLocationData(data),
      );
    }
    return locations;
  }
}
