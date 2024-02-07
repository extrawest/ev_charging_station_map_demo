import 'package:flutter/material.dart';

import '../../theme/theme_info.dart';

class ChargingParamItem extends StatelessWidget {
  final String? label;
  final String? description;

  const ChargingParamItem({
    super.key,
    this.label,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Padding(
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
            padding: const EdgeInsets.all(5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  label ?? '',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: greyLabelColor,
                      ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  description ?? '',
                  style: Theme.of(
                    context,
                  ).textTheme.displaySmall!.copyWith(
                        color: greenDark,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
