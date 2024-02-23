import 'package:flutter/material.dart';

import '../../stations/models/station.dart';
import '../../theme/theme_info.dart';

class SearchResultsCard extends StatelessWidget {
  final Station searchResultStation;
  final void Function()? onTap;

  const SearchResultsCard(
      {super.key, required this.searchResultStation, required this.onTap,});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: white,
      child: ListTile(
        title: Text(
          searchResultStation.stationId.toString(),
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
                color: greyLabelColor,
                fontSize: 14,
              ),
        ),
        subtitle: Text(
          '${searchResultStation.latitude} / ${searchResultStation.longitude}',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        leading: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(60),
            ),
            color: greyBorderColor, // Adjust the radius as needed
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.history,
              color: greyIcon,
            ),
          ),
        ),
        trailing: InkWell(
          onTap: () async {
            onTap?.call();
          },
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              color: yellowColor, // Adjust the radius as needed
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.send, color: white),
            ),
          ),
        ),
      ),
    );
  }
}
