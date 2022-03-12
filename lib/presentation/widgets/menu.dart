import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:mdspage/domain/entities/link.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.indigo,
            ),
            child: Text(
              'MDS PAGE',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ...[
            Link(Icons.notes, 'Notes', 'https://github.com/mdssjc/mds-notes'),
            Link(Icons.library_books, 'Book', 'https://github.com/mdssjc/mds'),
            Link(Icons.code, 'Github', 'https://github.com/mdssjc'),
          ].map(
            (link) => ListTile(
              leading: Icon(link.icon),
              title: Text(link.title),
              onTap: () => html.window.open(link.url, link.title),
            ),
          ),
          const Divider(height: 1),
          ListTile(
            leading: const Icon(Icons.close),
            title: const Text('Fechar'),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
