import 'package:flutter/material.dart';
import 'package:spacepal_project/shared/theme.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';

class ExplorePlanets extends StatelessWidget {
  final String planetName;
  final String objUrl;
  const ExplorePlanets(
      {super.key, required this.planetName, required this.objUrl});

  @override
  Widget build(BuildContext context) {
    Flutter3DController controller = Flutter3DController();

    return Column(
      children: [
        Container(
          width: 214,
          height: 214,
          child: Flutter3DViewer.obj(
            src: objUrl,
            scale: 20,
            cameraX: 0,
            cameraY: 0,
            cameraZ: 10,
            onProgress: (double progress) => debugPrint(
              'model loading progress : $progress',
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          planetName,
          style: whiteTextStyle.copyWith(
            fontSize: 28,
            fontWeight: bold,
          ),
        )
      ],
    );
  }
}
