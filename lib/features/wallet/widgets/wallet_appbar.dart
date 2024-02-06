import 'package:flutter/material.dart';

import '../../theme/theme_info.dart';
import '../../theme/utils/styling_utils.dart';

class WalletAppBar extends SliverPersistentHeaderDelegate {
  WalletAppBar({
    required this.minHeight,
    required this.maxHeight,
  });

  final double minHeight;
  final double maxHeight;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [white, greenAccent],
        ),
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(60),
            bottomRight: Radius.circular(60)), // Adjust the radius as needed
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            if (isContentScrolled(shrinkOffset))
              Column(
                children: [
                  Text('Wallet', style: Theme.of(context).textTheme.titleSmall),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            Text(
              'Your Balance',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              '\$ 100.23',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(
              height: 10,
            ),
            if (isContentScrolled(shrinkOffset))
              Column(
                children: [
                  FilledButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          getInvertFilledBtnColor),
                      foregroundColor: MaterialStateProperty.resolveWith(
                          getInvertFilledBtnTextColor),
                    ),
                    child: const Text('Refill'),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxExtent ||
        minHeight != oldDelegate.minExtent;
  }

  bool isContentScrolled(double shrinkOffset) {
    return shrinkOffset < (maxExtent - minExtent) / 4;
  }
}
