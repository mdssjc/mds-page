import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';

@immutable
class ScreenShot extends StatelessWidget {
  final String image;

  const ScreenShot({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      child: GestureDetector(
        child: FancyShimmerImage(
          imageUrl: '/assets/images/preview-$image',
          width: 180,
          height: 320,
          boxFit: BoxFit.contain,
        ),
        onTap: () => showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Tela de Oblique Strategies'),
            actions: [
              TextButton(
                child: const Text('Fechar'),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
            content: FancyShimmerImage(
              imageUrl: '/assets/images/$image',
              width: 1080,
              height: 1920,
              boxFit: BoxFit.contain,
            ),
          ),
        ),
      ),
      cursor: SystemMouseCursors.click,
    );
  }
}
