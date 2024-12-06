import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';
import 'package:spacepal_project/shared/theme.dart';

class PlanetCards extends StatefulWidget {
  final String title;
  final String funFact;
  final String objUrl;
  final double objSize;
  final VoidCallback onTap;
  const PlanetCards({
    super.key,
    required this.title,
    required this.funFact,
    required this.onTap,
    required this.objUrl,
    required this.objSize,
  });

  @override
  State<PlanetCards> createState() => _PlanetCardsState();
}

class _PlanetCardsState extends State<PlanetCards> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: double.infinity,
        height: 162,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultRadius),
          image: const DecorationImage(
            image: AssetImage('assets/card.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 120,
              height: 120,
              child: Cube(
                onSceneCreated: (Scene scene) => scene.world.add(
                  Object(
                    fileName: widget.objUrl,
                    scale: Vector3(
                      widget.objSize,
                      widget.objSize,
                      widget.objSize,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 13,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: whiteTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 12, bottom: 16),
                    child: Text(
                      widget.funFact,
                      style: whiteTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: light,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
