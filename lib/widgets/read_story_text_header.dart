import 'package:flutter/material.dart';
import 'package:spacepal_project/shared/theme.dart';

class ReadStoryTextHeader extends StatelessWidget {
  final int chapterNumber;
  final String title;
  const ReadStoryTextHeader({
    super.key,
    required this.chapterNumber,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Chapter $chapterNumber',
          style: whiteTextStyle.copyWith(
            fontSize: 28,
            fontWeight: bold,
            decoration: TextDecoration.none,
          ),
          overflow: TextOverflow.ellipsis,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 32,
              height: 32,
              margin: const EdgeInsets.only(
                right: 20,
                top: 28,
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icon_speaker.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              'Turn up the volume!',
              style: whiteTextStyle.copyWith(
                fontSize: 24,
                fontWeight: regular,
                decoration: TextDecoration.none,
              ),
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
        const SizedBox(
          height: 28,
        ),
        Text(
          title,
          style: whiteTextStyle.copyWith(
            fontSize: 20,
            fontWeight: bold,
            decoration: TextDecoration.none,
          ),
          overflow: TextOverflow.visible,
          maxLines: 3,
        )
      ],
    );
  }
}
