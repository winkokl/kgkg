import 'package:mgkaung_dms_mobile/core/enums/app_flavor.dart';
import 'package:mgkaung_dms_mobile/core/helpers/shared_preferences.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/env/env.dart';

void main() async {
  const flavor = String.fromEnvironment('flavor', defaultValue: 'demo');
  Env.appFlavor = AppFlavor.values.firstWhere((e) => e.name.toLowerCase() == flavor);
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefs.init();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const ProviderScope(child: AppWidget()));
}
