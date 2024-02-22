import 'package:extrawest_ui_kit/components/widgets/ew_base_button.dart';import 'package:flutter/material.dart';import 'package:flutter_bloc/flutter_bloc.dart';import 'package:samoilenko_maps_app/features/favorite/bloc/favorites_bloc.dart';import '../../google_map/utils/cluster_utils.dart';import '../../theme/theme_info.dart';import '../models/map_marker/map_marker.dart';class StationPointCard extends StatelessWidget {  const StationPointCard({    super.key,    required this.fullWidth,    required this.items,    required this.currentContext,    required this.distanceInKilometers,    this.doShowButton = false,  });  final double fullWidth;  final CustomMapMarker items;  final BuildContext currentContext;  final double? distanceInKilometers;  final bool doShowButton;  @override  Widget build(BuildContext context) {    final bool isSelected = items.name != null &&        context.watch<FavoritesCubit>().state.stations.any((station) => station.name == items.name);    return Padding(      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),      child: Card(        elevation: 0,        child: Container(          width: fullWidth,          decoration: BoxDecoration(            color: white,            borderRadius: const BorderRadius.all(Radius.circular(8)),            boxShadow: [              BoxShadow(                color: shadowColor1.withOpacity(0.2),                spreadRadius: 5,                blurRadius: 7,                offset: const Offset(0, 3), // changes position of shadow              ),            ],          ),          child: IntrinsicHeight(            child: Padding(              padding: const EdgeInsets.all(20),              child: Column(                crossAxisAlignment: CrossAxisAlignment.start,                children: [                  Row(                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                    crossAxisAlignment: CrossAxisAlignment.start,                    children: [                      Flexible(                        flex: 2,                        child: Column(                          crossAxisAlignment: CrossAxisAlignment.start,                          children: [                            getStationStatusWidget(items.status),                            const SizedBox(                              height: 5,                            ),                            Text(                              items.name ?? '',                              style: Theme.of(currentContext).textTheme.headlineSmall,                              maxLines: 2,                              overflow: TextOverflow.ellipsis,                            ),                          ],                        ),                      ),                      Flexible(                        child: IconButton(                          onPressed: () async {                            final station = CustomMapMarker(                              name: items.name ?? '',                              connectors: items.connectors,                              imageUrls: items.imageUrls,                              id: items.id ?? '',                              status: items.status,                              tenantId: items.tenantId,                              latLng: items.latLng,                            );                            context.read<FavoritesCubit>().saveSelectedStation(station);                          },                          icon: Icon(isSelected ? Icons.favorite : Icons.favorite_border, color: yellowColor),                        ),                      ),                    ],                  ),                  const SizedBox(                    height: 5,                  ),                  Text(                    'Address, Coordinates, Longitude, latitude here',                    style: Theme.of(currentContext).textTheme.labelMedium,                  ),                  const SizedBox(                    height: 15,                  ),                  Column(                    crossAxisAlignment: CrossAxisAlignment.start,                    children: [                      Row(                        children: [                          const Icon(Icons.location_on_outlined, color: greyLabelColor),                          const SizedBox(width: 2),                          if (distanceInKilometers != null)                            Text(                              '${distanceInKilometers?.toStringAsFixed(2)} km',                              style: Theme.of(currentContext).textTheme.labelMedium,                            ),                        ],                      ),                      Text(                        'Available connectors:  3/${items.connectors?.length}',                        style: Theme.of(currentContext).textTheme.labelMedium,                      ),                    ],                  ),                  const SizedBox(                    height: 15,                  ),                  SizedBox(                    height: 100,                    child: _buildConnectorsList(),                  ),                  if (doShowButton)                    EWBaseButton.elevated(                      onPressed: () {                        Navigator.of(context).pop();                      },                      title: 'Charge',                    ),                ],              ),            ),          ),        ),      ),    );  }  ListView _buildConnectorsList() {    return ListView.builder(      itemBuilder: (BuildContext context, int index) {        return Padding(          padding: const EdgeInsets.only(right: 10),          child: Column(            children: [              Container(                decoration: BoxDecoration(                  borderRadius: const BorderRadius.all(Radius.circular(8)),                  border: Border.all(                    color: items.connectors![index].enabled ? greenAccent.withOpacity(0.2) : greyBorderColor,                    width: 2,                  ),                ),                child: Column(                  children: [                    Container(                      width: 102,                      color: items.connectors![index].enabled ? greenAccent.withOpacity(0.2) : greyBorderColor,                      child: Padding(                        padding: const EdgeInsets.all(8.0),                        child: Text(                          getConnectorStatusText(items.connectors?[index].type),                          style: Theme.of(currentContext).textTheme.labelSmall,                        ),                      ),                    ),                    Padding(                      padding: const EdgeInsets.all(8.0),                      child: SizedBox(                        width: 80,                        child: Row(                          mainAxisAlignment: MainAxisAlignment.spaceBetween,                          children: [                            const Column(                              crossAxisAlignment: CrossAxisAlignment.start,                              children: [                                Icon(                                  Icons.charging_station,                                  size: 24,                                  color: greenAccent,                                ),                              ],                            ),                            Column(                              crossAxisAlignment: CrossAxisAlignment.start,                              children: [                                Text(                                  '22Kw',                                  style: Theme.of(currentContext)                                      .textTheme                                      .labelSmall!                                      .copyWith(fontWeight: FontWeight.w200, fontSize: 10),                                ),                                Text(                                  '3.00\$',                                  style: Theme.of(currentContext)                                      .textTheme                                      .labelSmall!                                      .copyWith(fontWeight: FontWeight.bold, fontSize: 10),                                ),                              ],                            ),                          ],                        ),                      ),                    ),                  ],                ),              ),            ],          ),        );      },      scrollDirection: Axis.horizontal,      itemCount: items.connectors?.length,    );  }}