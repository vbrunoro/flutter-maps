// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

abstract class MapEvent extends Equatable {
  const MapEvent();

  @override
  List<Object> get props => [];
}

class ShowLocation extends MapEvent {
  const ShowLocation({
    required this.latitude,
    required this.longitude,
  });
  final double latitude;
  final double longitude;
}
