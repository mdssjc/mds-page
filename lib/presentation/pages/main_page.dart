import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: Theme.of(context).colorScheme.onPrimary,
      child: GridView.count(
        crossAxisCount: 2,
        children: const [
          Card(
            child: ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('News'),
              leading: Icon(Icons.newspaper),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Ideas'),
              leading: Icon(Icons.home),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Projects'),
              leading: Icon(Icons.home),
            ),
          ),
        ],
      ),
    );
  }
}
