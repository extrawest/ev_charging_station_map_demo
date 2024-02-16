import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../features/google_map/map_bloc/map_pin_bloc/map_pin_cubit.dart';
import '../../features/google_map/map_bloc/map_type_bloc/map_cubit.dart';
import '../../features/profile/auth_bloc/auth_bloc.dart';
import '../../features/theme/theme.dart';
import '../services/theme_box.dart';

class GlobalBlocProvider extends StatelessWidget {
  const GlobalBlocProvider({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // Add here your BLoC/Cubits you are about to use through multiple screens
        BlocProvider(
          create: (context) =>
              ThemeBloc(Hive.box(ThemeBox.name))..add(const InitTheme()),
        ),
        BlocProvider<MapCubit>(
          create: (context) => MapCubit(),
        ),
        BlocProvider<MapPinCubit>(
          create: (context) => MapPinCubit(),
        ),


      ],
      child: child,
    );
  }
}
