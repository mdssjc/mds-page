import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }
}
