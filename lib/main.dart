import 'package:flutter/material.dart';

import 'presentation/core/constants.dart' as constants;
import 'presentation/core/parts.dart';
import 'presentation/pages/main_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      title: constants.title,
      home: Scaffold(
        appBar: getAppBar(),
        drawer: getDrawer(),
        body: const MainPage(),
      ),
    );
  }
}
