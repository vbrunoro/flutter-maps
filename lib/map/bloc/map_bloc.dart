import 'package:bloc/bloc.dart';
import 'package:flutter_maps/map/bloc/map_event.dart';
import 'package:flutter_maps/map/bloc/map_state.dart';

const _initialLatitude = 51.507359;
const _initialLongitude = -0.136439;

class MapBloc extends Bloc<MapEvent, MapState> {
  MapBloc()
      : super(
          const MapState(
            latitude: _initialLatitude,
            longitude: _initialLongitude,
          ),
        ) {
    on<ShowLocation>(
      (event, emit) {
        state.copyWith(
          latitude: event.latitude,
          longitude: event.longitude,
        );
      },
    );
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
}
