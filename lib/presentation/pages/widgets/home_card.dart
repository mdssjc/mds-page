import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
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
    );
  }
}
