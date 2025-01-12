import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'MDS Page';
    return MaterialApp(
      title: title,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
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
              const Text(title),
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.help_outline),
              onPressed: () {},
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: const [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.indigo,
                ),
                child: Center(
                  child: Text(
                    'MDS Page',
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
                title: Text('About'),
                leading: Icon(Icons.info),
              ),
              ListTile(
                title: Text('Contact'),
                leading: Icon(Icons.contact_page),
              ),
            ],
          ),
        ),
        body: Container(
          color: Colors.white,
          child: const Center(
            child: Text('Em construção...'),
          ),
        ),
      ),
    );
  }
}
