import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nagarro_flutter_app/nagarro_app.dart';

import 'common/simple_bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  BlocOverrides.runZoned(() {
    runApp(
      NagarroApp(
        flavor: 'dev',
      ),
    );
    // Setup observer to print all state changes to the console and to
    // be used for application analytics of all state changes.
  }, blocObserver: SimpleBlocObserver());
}
