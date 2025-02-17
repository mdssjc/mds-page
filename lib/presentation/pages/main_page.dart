import 'package:flutter/material.dart';

import 'widgets/home_card.dart';
import 'widgets/news_card.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.all(10),
      color: Theme.of(context).colorScheme.onPrimary,
      child: GridView.count(
        crossAxisCount: width >= 600 ? 2 : 1,
        childAspectRatio: width >= 600 ? width / 800 : 1,
        children: const [
          HomeCard(),
          NewsCard(),
          Card(
            child: ListTile(title: Text('Ideas'), leading: Icon(Icons.home)),
          ),
          Card(
            child: ListTile(title: Text('Projects'), leading: Icon(Icons.home)),
          ),
        ],
      ),
    );
  }
}
