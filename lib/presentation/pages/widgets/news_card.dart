import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text('News'),
              leading: Icon(Icons.newspaper),
            ),
            SizedBox(height: 2),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '''(##/##) Nova versão da página MDS: em Flutter.
                      ''',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
