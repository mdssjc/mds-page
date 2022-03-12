import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        height: 36.0,
        padding: const EdgeInsets.all(8.0),
        alignment: Alignment.center,
        color: Colors.grey[900],
        child: const Text(
          'Developed by Marcelo dos Santos :: 2022-2021',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ),
      );
}
