import 'package:flutter/material.dart';
import 'package:spacepal_project/shared/theme.dart';

class IconNavigation extends StatelessWidget {
  final bool isSelected;
  final String activeImageUrl;
  final String inactiveImageUrl;
  final int iconIndex;
  final int numActive;
  const IconNavigation({
    super.key,
    required this.activeImageUrl,
    required this.inactiveImageUrl,
    required this.iconIndex,
    required this.numActive,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  iconIndex == numActive ? activeImageUrl : inactiveImageUrl),
              fit: BoxFit.contain,
            ),
          ),
        ),
        const SizedBox(
          height: 17.5,
        ),
        Container(
          width: 25,
          height: 2,
          decoration: BoxDecoration(
            color: isSelected ? kLightPurpleColor : kTransparentColor,
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
        )
      ],
    );
  }
}
