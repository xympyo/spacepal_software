import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';
import 'package:spacepal_project/shared/theme.dart';

class FunfactCards extends StatelessWidget {
  final String objUrl;
  final String planetName;
  final VoidCallback onTap;
  const FunfactCards({
    super.key,
    required this.objUrl,
    required this.planetName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          color: kLightPurpleColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 60,
              height: 60,
              margin: const EdgeInsets.only(
                right: 24,
                left: 20,
              ),
              child: Cube(
                onSceneCreated: (Scene scene) => scene.world.add(
                  Object(
                    fileName: objUrl,
                    scale: Vector3(
                      8,
                      8,
                      8,
                    ),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  planetName,
                  style: whiteTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: bold,
                  ),
                ),
                Text(
                  'What makes it special?',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: regular,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
