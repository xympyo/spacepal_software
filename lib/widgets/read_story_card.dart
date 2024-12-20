import 'package:flutter/material.dart';
import 'package:spacepal_project/shared/theme.dart';

class ReadStoryCard extends StatelessWidget {
  final String imageUrl;
  final int chapterNumber;
  final String chapterTitle;
  final VoidCallback onTap;
  const ReadStoryCard({
    super.key,
    required this.imageUrl,
    required this.chapterNumber,
    required this.chapterTitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Widget image() {
      return Container(
        width: double.infinity,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultRadius),
          image: DecorationImage(
            image: AssetImage(imageUrl),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    Widget customShadow() {
      return Container(
        width: double.infinity,
        height: 120,
        decoration: ShapeDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black.withOpacity(0.4),
              Colors.black.withOpacity(0.6)
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
        ),
      );
    }

    Widget customText() {
      return Container(
        margin: const EdgeInsets.only(
          top: 12,
          left: 12,
          right: 12,
        ),
        child: Column(
          children: [
            Center(
              child: Text(
                'Chapter : $chapterNumber',
                style: whiteTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: light,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Center(
              child: Text(
                chapterTitle,
                style: whiteTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: bold,
                ),
                overflow: TextOverflow.visible,
                maxLines: 3,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      );
    }

    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          image(),
          customShadow(),
          customText(),
        ],
      ),
    );
  }
}
