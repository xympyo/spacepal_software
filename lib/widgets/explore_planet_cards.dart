import 'package:flutter/material.dart';
import 'package:spacepal_project/shared/theme.dart';

class ExplorePlanetCards extends StatelessWidget {
  final double height;
  final String imageUrl;
  final String titleDesc;
  final String firstDesc;
  final String secondDesc;
  const ExplorePlanetCards({
    super.key,
    required this.height,
    required this.imageUrl,
    required this.titleDesc,
    required this.firstDesc,
    this.secondDesc = '',
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
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
      );
    }

    Widget customShadow() {
      return Container(
        width: double.infinity,
        height: height,
        decoration: ShapeDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black.withOpacity(0.4),
              Colors.black.withOpacity(0.9)
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
        ),
      );
    }

    Widget texts() {
      return Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titleDesc,
              style: whiteTextStyle.copyWith(
                fontSize: 12,
                fontWeight: bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              firstDesc,
              style: whiteTextStyle.copyWith(
                fontSize: 12,
                fontWeight: light,
              ),
              overflow: TextOverflow.visible,
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              secondDesc,
              style: whiteTextStyle.copyWith(
                fontSize: 12,
                fontWeight: light,
              ),
              overflow: TextOverflow.visible,
            )
          ],
        ),
      );
    }

    return Stack(
      children: [
        image(),
        customShadow(),
        texts(),
      ],
    );
  }
}
