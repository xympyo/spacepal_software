import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

class ExplorePlanets extends StatelessWidget {
  final String objUrl;
  final String planetName;
  final double planetSize;
  const ExplorePlanets({
    super.key,
    required this.objUrl,
    required this.planetName,
    required this.planetSize,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 214,
      height: 214,
      child: Cube(
        onSceneCreated: (Scene scene) => scene.world.add(
          Object(
            fileName: objUrl,
            scale: Vector3(
              planetSize,
              planetSize,
              planetSize,
            ),
          ),
        ),
      ),
    );
  }
}
