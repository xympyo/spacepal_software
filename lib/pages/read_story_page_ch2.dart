import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:spacepal_project/widgets/explore_planet_background.dart';
import 'package:spacepal_project/widgets/explore_planet_go_back_button.dart';
import 'package:spacepal_project/widgets/read_story_text_header.dart';
import 'package:spacepal_project/widgets/read_story_texts.dart';
import 'package:spacepal_project/shared/theme.dart';

class ReadStoryPageCh2 extends StatefulWidget {
  const ReadStoryPageCh2({super.key});

  @override
  State<ReadStoryPageCh2> createState() => _ReadStoryPageCh2State();
}

class _ReadStoryPageCh2State extends State<ReadStoryPageCh2> {
  late final AudioPlayer player;

  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
    player.setReleaseMode(ReleaseMode.stop);

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(seconds: 3));
      await player.play(AssetSource('audio/screen2.mp3'));
    });
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  Future<void> _stop() async {
    await player.stop();
    debugPrint('Audio stopped');
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        ExplorePlanetBackground(
          height: height,
          imageUrl: 'assets/read_story_chapter2_background.png',
        ),
        Container(
          margin: EdgeInsets.only(
            top: 60,
            left: defaultMargin,
            right: defaultMargin,
          ),
          child: const ReadStoryTextHeader(
            chapterNumber: 2,
            title: 'Mythology Begins - Chaos and Gaia',
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            left: defaultMargin,
            right: defaultMargin,
            top: 200,
          ),
          child: ListView(
            children: const [
              ReadStoryTexts(
                texts:
                    "In the very beginning, there was Chaos, a huge empty space, dark and quiet. From this mysterious void, the first things appeared. The first being was Gaia, the Earth itself, and she was not just any planet—she was a goddess!",
              ),
              SizedBox(
                height: 12,
              ),
              ReadStoryTexts(
                texts:
                    "Gaia was the mother of everything on Earth. She gave birth to mountains, oceans, and forests. She even gave birth to Uranus, the sky, who became her partner. Together, Gaia and Uranus created the mighty Titans, giant, powerful beings who ruled the world.",
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            bottom: 40,
            left: defaultMargin,
            right: defaultMargin,
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: GestureDetector(
              onTap: () {
                _stop();
              },
              child: const ExplorePlanetGoBackButton(
                text: 'Read Other Story',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
