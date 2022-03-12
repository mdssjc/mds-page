import 'package:flutter/material.dart';
import 'package:mdspage/theme.dart';
import 'package:qlevar_router/qlevar_router.dart';

import 'routes/routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: const QRouteInformationParser(),
      routerDelegate: QRouterDelegate(Routes.routes),
      title: 'MDS Page',
      theme: themeLight,
      darkTheme: themeDark,
      themeMode: ThemeMode.system,
    );
  }
}
