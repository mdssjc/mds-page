import 'package:mdspage/presentation/pages/main_page.dart';
import 'package:qlevar_router/qlevar_router.dart';
import 'package:mdspage/presentation/pages/about_page.dart' deferred as about;

import 'deferred_loader.dart';

class Routes {
  static final routes = <QRoute>[
    QRoute(path: '/', builder: () => const MainPage()),
    QRoute(
      path: '/about',
      builder: () => about.AboutPage(),
      middleware: [DefferedLoader(about.loadLibrary)],
    ),
  ];
}
