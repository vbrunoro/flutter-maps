// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

abstract class MapEvent extends Equatable {
  const MapEvent();

  @override
  List<Object> get props => [];
}

class ShowLocation extends MapEvent {
  final double latitude;
  final double longitude;
  const ShowLocation({
    required this.latitude,
    required this.longitude,
  });
}
