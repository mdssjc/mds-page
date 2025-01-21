import 'package:flutter/material.dart';

import 'presentation/core/constants.dart' as constants;
import 'presentation/core/parts.dart';
import 'presentation/core/theme.dart';
import 'presentation/pages/main_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: constants.title,
      theme: themeData,
      home: Scaffold(
        appBar: getAppBar(),
        drawer: getDrawer(),
        body: const MainPage(),
      ),
    );
  }
}
