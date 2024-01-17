import 'package:flutter_bloc/flutter_bloc.dart';

import '../services/services.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    log.fine(change);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    log.fine(transition);
  }

  void observe() {
    Bloc.observer = this;
  }
}
