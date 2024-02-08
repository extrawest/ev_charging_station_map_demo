import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/utils/date_format_utils.dart';
import '../../theme/theme_info.dart';
import '../../theme/utils/styling_utils.dart';
import '../bloc/charging_cubit.dart';
import '../models/charging_info.dart';
import 'charging_history_card.dart';
import 'charging_param_item.dart';
import 'charging_session.dart';
import 'charging_station_param_item.dart';

class ChargingStationsPresenterWidget extends StatefulWidget {
  const ChargingStationsPresenterWidget({super.key});

  @override
  _ChargingStationsPresenterWidgetState createState() =>
      _ChargingStationsPresenterWidgetState();
}

class _ChargingStationsPresenterWidgetState
    extends State<ChargingStationsPresenterWidget> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    context.read<ChargingCubit>().fetchChargingInfo();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChargingCubit, ChargingState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: white,
            body: state.when(
              initial: () => const Center(child: CircularProgressIndicator()),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (String errorMsg) => Center(child: Text(errorMsg)),
              loaded: (chargingInfo) {
                return CustomScrollView(
                  controller: _scrollController,
                  slivers: [
                    SliverPadding(
                      padding: EdgeInsets.zero,
                      sliver: SliverToBoxAdapter(
                        child: Container(
                          decoration: BoxDecoration(
                            color: greenAccent.withOpacity(0.2),
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                            ), // Adjust the radius as needed
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                _buildTextHeaderSection(
                                  context,
                                  chargingInfo,
                                ),
                                ChargingSession(
                                  chargingInfo: chargingInfo,
                                ),
                                _buildButtonSection(context, chargingInfo),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  child: Row(
                                    children: [
                                      ChargingParamItem(
                                        label: 'Speed',
                                        description: chargingInfo.speed,
                                      ),
                                      ChargingParamItem(
                                        label: 'Voltage',
                                        description: chargingInfo.voltage,
                                      ),
                                      ChargingParamItem(
                                        label: 'Amperage',
                                        description: chargingInfo.amperage,
                                      ),
                                    ],
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(10),
                                  child: ChargingStationParamItem(),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SliverPadding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 20,
                      ),
                      sliver: SliverToBoxAdapter(
                        child: Text(
                          'Transaction history',
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ),
                    ),
                    SliverPadding(
                      sliver: SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                            return ChargingHistoryCard(
                              walletInfo: chargingInfo.history![index],
                            );
                          },
                          childCount: chargingInfo.history?.length,
                        ),
                      ),
                      padding: EdgeInsets.zero,
                    ),
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }

  Padding _buildButtonSection(BuildContext context, ChargingInfo chargingInfo) {
    final TextStyle? itemTextStyle = Theme.of(context).textTheme.bodyMedium;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Cost:',
                style: itemTextStyle!.copyWith(fontWeight: FontWeight.w600),
              ),
              Text(
                '\$${chargingInfo.cost}',
                style: itemTextStyle.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.resolveWith(
                getInvertFilledBtnColor,
              ),
            ),
            child: const Text('Stop Charging'),
          ),
        ],
      ),
    );
  }

  Column _buildTextHeaderSection(
    BuildContext context,
    ChargingInfo chargingInfo,
  ) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          'Charging session',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(
          height: 10,
        ),
        Text.rich(
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(fontWeight: FontWeight.w600, color: greenAccent),
          const TextSpan(
            children: [
              WidgetSpan(
                child: Icon(
                  Icons.bolt,
                  color: greenAccent,
                ),
              ),
              TextSpan(text: 'CHARGING'),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          'starting time: ${convertStringTOyyMMddHHmm(chargingInfo.startingTime.toString())}',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
