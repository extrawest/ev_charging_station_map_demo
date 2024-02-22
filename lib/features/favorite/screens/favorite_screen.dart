import 'dart:math';import 'package:flutter/material.dart';import 'package:flutter_bloc/flutter_bloc.dart';import 'package:geolocator/geolocator.dart';import '../../stations/bloc/stations_bloc/stations_bloc.dart';import '../../stations/widgets/station_point_card.dart';import '../bloc/favorites_bloc.dart';class FavoriteScreen extends StatefulWidget {  const FavoriteScreen({super.key});  @override  State<FavoriteScreen> createState() => _FavoriteScreenState();}class _FavoriteScreenState extends State<FavoriteScreen> {  @override  Widget build(BuildContext context) {    return FutureBuilder<Point<double>?>(      future: context.read<StationsBloc>().getMyLocation(),      builder: (context, snapshot) {        if (snapshot.connectionState == ConnectionState.waiting) {          return const Center(child: CircularProgressIndicator());        } else {          return _FavoriteScreenBody(            myLocation: snapshot.data,          );        }      },    );  }}class _FavoriteScreenBody extends StatelessWidget {  final Point<double>? myLocation;  const _FavoriteScreenBody({required this.myLocation});  @override  Widget build(BuildContext context) {    return Scaffold(      body: BlocBuilder<FavoritesCubit, FavoritesState>(        builder: (context, state) {          if (state is FavoritesLoading) {            return const Center(child: CircularProgressIndicator());          } else if (state is FavoritesLoaded) {            return state.stations.isEmpty                ? const Center(                    child: Text('No Favorite items'),                  )                : Column(                    children: [                      const SizedBox(                        height: 40,                      ),                      Text('Favorites', style: Theme.of(context).textTheme.titleSmall),                      Expanded(                        child: ListView.builder(                          itemCount: state.stations.length,                          itemBuilder: (context, index) {                            final double fullWidth = MediaQuery.of(context).size.width;                            final distanceInKilometers = myLocation != null                                ? Geolocator.distanceBetween(                                      state.stations[index].latLng?.latitude ?? 0.0,                                      state.stations[index].latLng?.longitude ?? 0.0,                                      myLocation!.x,                                      myLocation!.y,                                    ) /                                    1000                                : null;                            return StationPointCard(                              fullWidth: fullWidth,                              items: state.stations[index],                              currentContext: context,                              distanceInKilometers: distanceInKilometers,                            );                          },                        ),                      ),                    ],                  );          } else {            return const Text('Something went wrong!');          }        },      ),    );  }}