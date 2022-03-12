import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mdspage/presentation/widgets/footer.dart';
import 'package:mdspage/presentation/widgets/menu.dart';
import 'package:url_launcher/url_launcher.dart';

class BasePage extends StatelessWidget {
  final Widget page;

  const BasePage({Key? key, required this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MDS Page'),
        actions: [
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.twitter),
            onPressed: () => launch('https://twitter.com/mdssjc'),
          ),
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.github),
            onPressed: () => launch('https://github.com/mdssjc'),
          ),
        ],
      ),
      drawer: const Menu(),
      key: key,
      body: SafeArea(child: page),
      bottomSheet: Footer(key: key),
    );
  }
}
