import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:samoilenko_maps_app/features/wallet/widgets/wallet_appbar.dart';
import 'package:samoilenko_maps_app/features/wallet/widgets/wallet_balance_card.dart';

import '../../theme/theme_info.dart';
import '../bloc/wallet_cubit.dart';

class WalletPresenterWidget extends StatefulWidget {
  const WalletPresenterWidget({super.key});

  @override
  _WalletPresenterWidgetState createState() => _WalletPresenterWidgetState();
}

class _WalletPresenterWidgetState extends State<WalletPresenterWidget> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WalletCubit, WalletState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: white,
            body: state.when(
              initial: () => const Center(child: CircularProgressIndicator()),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (String errorMsg) => Center(child: Text(errorMsg)),
              loaded: (walletInfo) {
                return CustomScrollView(
                  controller: _scrollController,
                  slivers: [
                    SliverPersistentHeader(
                      pinned: true,
                      delegate: WalletAppBar(
                        minHeight: 100,
                        maxHeight: 243,
                        ballance: walletInfo.balance ?? 0.0,
                      ),
                    ),
                    SliverPadding(
                      padding: EdgeInsets.zero,
                      sliver: SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                            return WalletBalanceCard(
                              walletInfo: walletInfo.history![index],
                            );
                          },
                          childCount: walletInfo.history?.length,
                        ),
                      ),
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
}
