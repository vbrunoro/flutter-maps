import 'dart:convert';

import 'package:flutter_maps/models/location_data.dart';
import 'package:http/http.dart' as http;

/// Exception thrown when getLocations method fails.
class GetLocationsRequestFailure implements Exception {}

/// Exception thrown LocationData from json fails.
class GetLocationsDeserializationFailure implements Exception {}

/// Location Api CLient
class LocationApiClient {
  /// {@macro location_api_client}
  LocationApiClient({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  final http.Client _httpClient;

  static const String _apiBaseUrl = 'api.positionstack.com';

  static const String _forwardMethod = '/v1/forward';

  static const String _apiKey = '499f444e464492650c145798410bba12';

  final _headers = {
    'Accept': 'application/json',
    'Content-type': 'application/json',
  };

  /// get locations by name
  Future<List<LocationData>> getLocations({required String location}) async {
    final queryParameters = {
      'access_key': _apiKey,
      'query': location,
    };

    final uri = Uri.http(
      _apiBaseUrl,
      _forwardMethod,
      queryParameters,
    );

    final response = await _httpClient.get(
      uri,
      headers: _headers,
    );

    if (response.statusCode != 200) {
      throw GetLocationsRequestFailure();
    }

    final locations = <LocationData>[];

    try {
      final dynamic jsonList =
          (jsonDecode(response.body) as Map<String, dynamic>)['data'];

      for (final jsonLocation in jsonList) {
        final location =
            LocationData.fromJson(jsonLocation as Map<String, dynamic>);
        locations.add(location);
      }
      return locations;
    } catch (_) {
      throw GetLocationsDeserializationFailure();
    }
  }
}
