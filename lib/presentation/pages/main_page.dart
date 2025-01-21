import 'package:flutter/material.dart';

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
        children: const [
          Card(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    title: Text('Home'),
                    leading: Icon(Icons.home),
                  ),
                  SizedBox(height: 2),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      '''Bem-vindo à nossa página!
                  
              Aqui, você encontrará informações detalhadas sobre nossas experiências e projetos relacionados ao desenvolvimento de software.
              
              Nosso objetivo é compartilhar nossas ideias e conhecimentos para ajudá-lo a entender melhor o mundo da programação e a aprimorar suas habilidades na área.
              
              Explore nosso conteúdo e sinta-se à vontade para entrar em contato conosco se tiver alguma dúvida ou sugestão. ''',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
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
