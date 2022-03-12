import 'package:flutter/material.dart';
import 'package:mdspage/presentation/template/base_page.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      key: key,
      page: const Text('MDS Page'),
    );
  }
}
