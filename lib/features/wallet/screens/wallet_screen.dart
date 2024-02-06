import 'package:flutter/material.dart';import 'package:flutter_bloc/flutter_bloc.dart';import '../../../common/services/logger.dart';import '../bloc/wallet_cubit.dart';class WalletScreen extends StatelessWidget {  const WalletScreen({super.key});  @override  Widget build(BuildContext context) {    return BlocProvider<WalletCubit>(      create: (_) => WalletCubit(        walletRepository: RepositoryProvider.of(context),      )..fetchWallet(),      child: BlocBuilder<WalletCubit, WalletState>(        builder: (context, state) {          log.fine('Wallet>>>>$state');          return Scaffold(            body: Column(              children: [                state.when(                    initial: () => const Center(child:CircularProgressIndicator() ),                    loading: () => const Center(child:CircularProgressIndicator() ),                    error:  (String errorMsg) =>  Center(child:Text(errorMsg) ),                    loaded: (walletInfo) {                      return Text(walletInfo.balance.toString());                    },                ),              ],            ),          );        },      ),    );  }}