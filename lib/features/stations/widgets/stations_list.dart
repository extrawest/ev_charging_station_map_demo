import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:samoilenko_maps_app/features/stations/bloc/stations_cubit.dart';
import 'package:samoilenko_maps_app/features/stations/bloc/stations_cubit_state.dart';

import '../../../common/router.dart';
import '../models/station.dart';

class StationsList extends StatefulWidget {
  const StationsList({super.key});

  @override
  State<StationsList> createState() => _StationsListState();
}

class _StationsListState extends State<StationsList> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: BlocBuilder<StationsCubit, StationsCubitState>(
            builder: (context, state) {
              return state.when(
                initial: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                error: (String message) => Center(
                  child: Text(message),
                ),
                loaded: (List<Station> station) {
                  final items = station;
                  return Column(children: [
                    FilledButton(
                      onPressed: () {
                        context.go(homeRoute);
                      },
                      child: const Text('Go to Home'),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemBuilder: (BuildContext context, int index) {
                          return Row(
                            children: [
                              const SizedBox(
                                width: 80,
                                height: 80,
                                // child: Image.network(items[index].stationId ?? ''),
                              ),
                              Text(items[index].connectors?[0].type.toString() ?? ''),
                              // Text(items[index].chargePointId.toString()  ?? ''),
                            ],
                          );
                        },
                        itemCount: items.length,
                        controller: _scrollController,
                      ),
                    ),
                  ],);
                },
              );
            },
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {}
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) {
      return false;
    }
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}
