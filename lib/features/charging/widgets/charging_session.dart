
import 'dart:math';

import 'package:flutter/material.dart';

import '../../theme/theme_info.dart';
import '../models/charging_info.dart';

class ChargingSession extends StatelessWidget {
  final ChargingInfo chargingInfo;
  const ChargingSession({
    super.key, required this.chargingInfo,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 195.75,
      height: 204.08,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Transform.rotate(
            angle: pi / 2,
            child: Container(
              width: 195.75,
              height: 195.75,
              decoration: BoxDecoration(
                gradient: const SweepGradient(
                  center:
                  FractionalOffset.center,
                  colors: <Color>[
                    white,
                    greenAccent,
                  ],
                  stops: <double>[0.0, 1.0],
                ),
                borderRadius:
                BorderRadius.circular(
                  195.75,
                ),
              ),
            ),
          ),
          Positioned(
            top: 2,
            child: Container(
              width: 191.75,
              height: 191.75,
              decoration: BoxDecoration(
                borderRadius:
                BorderRadius.circular(
                  191.75,
                ),
                color: white,
              ),
            ),
          ),
          Positioned(
            top: 7.875,
            child: Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.circular(
                    180,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: greenAccent
                          .withOpacity(0.1),
                      blurRadius: 7,
                      spreadRadius: 15,
                      // offset: const Offset(2, 2),
                    ),
                    BoxShadow(
                      color: greenAccent
                          .withOpacity(0.1),
                      blurRadius: 7,
                      spreadRadius: 15,
                      // offset: const Offset(-2, -2),
                    ),
                  ],
                  color: white,),
              child: Container(
                margin:
                const EdgeInsets.all(5),
                width: 170,
                height: 170,
                decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.circular(
                    170,
                  ),
                  border: Border.all(
                    color: yellowColor,
                    width: 0.5,
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 25,),
                    Text(
                      '${chargingInfo.chargingPercent}%',
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(
                        color:
                        greenAccent,),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      '${chargingInfo.kwh} kWh',
                      style: Theme.of(
                        context,
                      )
                          .textTheme
                          .displaySmall!
                          .copyWith(
                        color: greenDark,
                      ),
                    ),
                    Text(
                      'Delivered',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 191.585,
            child: Container(
              width: 8.33,
              height: 8.33,
              decoration: BoxDecoration(
                borderRadius:
                BorderRadius.circular(8),
                color: greenAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
