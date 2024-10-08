import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_maps/location_input/widgets/location_input_widget.dart';
import 'package:flutter_maps/map/bloc/map_bloc.dart';
import 'package:flutter_maps/map/bloc/map_event.dart';
import 'package:flutter_maps/map/bloc/map_state.dart';
import 'package:flutter_maps/map/widget/map_widget.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MapBloc(),
      child: const _MapView(),
    );
  }
}

class _MapView extends StatelessWidget {
  const _MapView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapBloc, MapState>(
      builder: (context, state) {
        return Scaffold(
          body: MapWidget(
            key: Key('map${state.latitude}${state.longitude}'),
            latitude: state.latitude,
            longitude: state.longitude,
          ),
          floatingActionButton: LocationInput(
            onSelected: (location) {
              context.read<MapBloc>().add(
                    ShowLocation(
                      latitude: location.latitude,
                      longitude: location.longitude,
                    ),
                  );
            },
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
        );
      },
    );
  }
}
