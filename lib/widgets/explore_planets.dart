import 'package:flutter/material.dart';
import 'package:spacepal_project/shared/theme.dart';

class ExplorePlanets extends StatelessWidget {
  final String planetName;
  const ExplorePlanets({
    super.key,
    required this.planetName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 214,
          height: 214,
          decoration: BoxDecoration(
            color: kWhiteColor,
            shape: BoxShape.circle,
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
