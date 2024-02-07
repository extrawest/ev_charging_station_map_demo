import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../theme/theme_info.dart';

class ChargingStationParamItem extends StatelessWidget {
  final String? label;
  final String? description;

  const ChargingStationParamItem({
    super.key,
    this.label,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              whiteColor1,
              whiteColor2,
            ], // Adjust colors as needed
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 2,
                child: Row(
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.charging_station,
                            color: greyIcon,
                            size: 25,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Station Name',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: labelTextColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        Text(
                          'Coordinates,Longitude, latitude here',
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontFamily: GoogleFonts.roboto().fontFamily,
                                    fontSize: 10,
                                  ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Tariff',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontFamily: GoogleFonts.inter().fontFamily,
                            fontSize: 10,
                          ),
                    ),
                    Text(
                      '\$ 3.00 per kWh',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontFamily: GoogleFonts.inter().fontFamily,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
