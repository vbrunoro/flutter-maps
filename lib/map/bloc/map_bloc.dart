import 'package:bloc/bloc.dart';
import 'package:flutter_maps/map/bloc/map_event.dart';
import 'package:flutter_maps/map/bloc/map_state.dart';

const _initialLat = 51.507359;
const _initialLong = -0.136439;

class MapBloc extends Bloc<MapEvent, MapState> {
  MapBloc()
      : super(
          const MapState(
            latitude: _initialLat,
            longitude: _initialLong,
          ),
        ) {
    on<ShowLocation>(_onShowLocation);
  }

  void _onShowLocation(
    ShowLocation event,
    Emitter<MapState> emit,
  ) {
    emit(
      state.copyWith(
        latitude: event.latitude,
        longitude: event.longitude,
      ),
    );
  }
}

  // void _onShowLocation(
  //   ShowLocation event,
  //   Emitter<MapState> emit,
  // ) {
  //   emit(
  //     state.copyWith(
  //       latitude: event.latitude,
  //       longitude: event.longitude,
  //     ),
  //   );
  // }

