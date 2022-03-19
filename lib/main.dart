import 'package:flutter/material.dart';
import 'package:housework_together/bootstrap/app.dart';
import 'package:housework_together/routes/router.dart';
import 'package:nylo_framework/nylo_framework.dart';

import 'bootstrap/boot.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Nylo nylo = await Nylo.init(router: buildRouter(), setup: boot);

  runApp(
    AppBuild(
      navigatorKey: nylo.router!.navigatorKey,
      onGenerateRoute: nylo.router!.generator(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
