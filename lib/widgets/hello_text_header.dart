import 'package:flutter/material.dart';
import 'package:spacepal_project/shared/theme.dart';

class HelloTextHeader extends StatelessWidget {
  final bool needImage;
  final String firstText;
  final String secondText;
  final String color;
  const HelloTextHeader({
    super.key,
    required this.firstText,
    required this.secondText,
    this.needImage = true,
    this.color = 'whiteTextStyle',
  });

  TextStyle getColor(String colorName) {
    switch (colorName) {
      case 'whiteTextStyle':
        return TextStyle(color: kWhiteColor);
      case 'blackTextStyle':
        return TextStyle(color: kDarkPurpleColor);
      default:
        return TextStyle(color: kWhiteColor);
    }
  }

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle =
        getColor(color).copyWith(fontSize: 20, fontWeight: bold);
    return Column(
      children: [
        Row(
          children: [
            Text(
              firstText,
              style: textStyle,
            ),
            needImage
                ? const SizedBox(
                    width: 20,
                  )
                : const SizedBox(
                    width: 0,
                  ),
            Container(
              height: needImage ? 20 : 0,
              width: needImage ? 20 : 0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon_rocket_explore_planet.png'),
                ),
              ),
            )
          ],
        ),
        Row(
          children: [
            Text(
              secondText,
              style: textStyle,
            ),
          ],
        )
      ],
    );
  }
}
