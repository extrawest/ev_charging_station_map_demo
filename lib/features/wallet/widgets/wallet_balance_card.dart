import 'package:flutter/material.dart';
import 'package:samoilenko_maps_app/features/wallet/models/history.dart';

import '../../../common/utils/date_format_utils.dart';
import '../../theme/theme_info.dart';

class WalletBalanceCard extends StatelessWidget {
  final History walletInfo;

  const WalletBalanceCard({
    super.key,
    required this.walletInfo,
  });

  @override
  Widget build(BuildContext context) {
    final double halfScreenWidth = MediaQuery.of(context).size.width / 2;

    return Card(
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: halfScreenWidth,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        walletInfo.stationName.toString(),
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                              color: labelTextColor,
                            ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text(
                      convertStringToDMYH(
                        walletInfo.datetimeFinished.toString(),
                      ),
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      '${walletInfo.consumedKwh}|2h 16m',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '\$${walletInfo.bill?.toStringAsFixed(2)}',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(color: greenTagColor),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
