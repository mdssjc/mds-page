import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:mdspage/presentation/template/base_page.dart';
import 'package:mdspage/presentation/widgets/screenshot.dart';
import 'package:url_launcher/url_launcher.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const padding = EdgeInsets.all(8);

    return BasePage(
      key: key,
      page: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              child: Flash(
                child: const Padding(
                  padding: padding,
                  child: Text(
                      '''
      Bem vindo ao MDS Page!
      Em breve serão adicionados materiais de estudo sobre Construção de Software.
      O site é um experimento das vantagens e desvantagens da plataforma Web em Flutter.'''),
                ),
              ),
            ),
            Card(
              child: Column(
                children: [
                  Flash(
                    child: const Padding(
                      padding: padding,
                      child: Text(
                        'Aplicativo: Oblique Strategies',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 3,
                    crossAxisSpacing: 32,
                    physics: const NeverScrollableScrollPhysics(),
                    children: const [
                      ScreenShot(
                        key: ValueKey('ss1'),
                        image: 'ss1.png',
                      ),
                      ScreenShot(
                        key: ValueKey('ss2'),
                        image: 'ss2.png',
                      ),
                      ScreenShot(
                        key: ValueKey('ss2'),
                        image: 'ss3.png',
                      ),
                    ],
                  ),
                  const Padding(
                    padding: padding,
                    child: Text(
                      'Oblique Strategies é um método baseado em cartas para promover criatividade, criado por Brian Eno e Peter Schmidt.',
                    ),
                  ),
                  Padding(
                    padding: padding,
                    child: OutlinedButton.icon(
                      icon: const Icon(Icons.shop),
                      label: const Text('VER NO GOOGLE PLAY'),
                      onPressed: () => launch(
                          'https://play.google.com/store/apps/details?id=com.github.mdssjc.oblique_strategies'),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 36),
          ],
        ),
      ),
    );
  }
}
