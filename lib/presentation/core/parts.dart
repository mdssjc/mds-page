import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart' as constants;

getAppBar() {
  return AppBar(
    title: Row(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Center(
            child: Text(
              'λ',
              style: GoogleFonts.getFont(
                'Mansalva',
                fontSize: 28,
                decorationStyle: TextDecorationStyle.solid,
              ),
            ),
          ),
        ),
        const Text(constants.title),
      ],
    ),
    actions: [
      IconButton(
        icon: const Icon(Icons.help_outline),
        onPressed: () {},
      ),
    ],
  );
}

getDrawer() {
  return Drawer(
    child: ListView(
      children: const [
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.indigo,
          ),
          child: Center(
            child: Text(
              constants.title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
        ),
        ListTile(
          title: Text('Home'),
          leading: Icon(Icons.home),
        ),
        ListTile(
          title: Text('Notes'),
          leading: Icon(Icons.note),
        ),
        ListTile(
          title: Text('Book'),
          leading: Icon(Icons.book),
        ),
        ListTile(
          title: Text('Projects'),
          leading: Icon(Icons.work),
        ),
        ListTile(
          title: Text('GitHub'),
          leading: Icon(Icons.code),
        ),
        ListTile(
          title: Text('About'),
          leading: Icon(Icons.info),
        ),
      ],
    ),
  );
}
