import 'package:flutter/material.dart';
import 'package:spacepal_project/shared/theme.dart';

class ReadStoryTexts extends StatelessWidget {
  final String texts;
  final bool isWhite;
  const ReadStoryTexts({
    super.key,
    required this.texts,
    this.isWhite = true,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      texts,
      style: isWhite
          ? whiteTextStyle
          : blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: regular,
              decoration: TextDecoration.none,
            ),
      overflow: TextOverflow.visible,
    );
  }
}
