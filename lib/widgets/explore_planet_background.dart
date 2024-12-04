import 'package:flutter/material.dart';

class ExplorePlanetBackground extends StatelessWidget {
  final double height;
  final String imageUrl;
  const ExplorePlanetBackground({
    super.key,
    required this.height,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    Widget image() {
      return Container(
        width: double.infinity,
        height: height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imageUrl),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    Widget shadow() {
      return Container(
        width: double.infinity,
        height: height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black.withOpacity(0.4),
              Colors.black.withOpacity(0.9),
            ],
          ),
        ),
      );
    }

    return Stack(
      children: [
        image(),
        shadow(),
      ],
    );
  }
}
