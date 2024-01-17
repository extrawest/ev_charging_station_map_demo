import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

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
      ],
      child: child,
    );
  }
}
