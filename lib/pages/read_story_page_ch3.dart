import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:spacepal_project/widgets/explore_planet_background.dart';
import 'package:spacepal_project/widgets/explore_planet_go_back_button.dart';
import 'package:spacepal_project/widgets/read_story_text_header.dart';
import 'package:spacepal_project/widgets/read_story_texts.dart';
import 'package:spacepal_project/shared/theme.dart';

class ReadStoryPageCh3 extends StatefulWidget {
  const ReadStoryPageCh3({super.key});

  @override
  State<ReadStoryPageCh3> createState() => _ReadStoryPageCh3State();
}

class _ReadStoryPageCh3State extends State<ReadStoryPageCh3> {
  late final AudioPlayer player;

  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
    player.setReleaseMode(ReleaseMode.stop);

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(seconds: 3));
      await player.play(AssetSource('audio/screen3.mp3'));
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
          imageUrl: 'assets/read_story_chapter3_background.png',
        ),
        Container(
          margin: EdgeInsets.only(
            top: 60,
            left: defaultMargin,
            right: defaultMargin,
          ),
          child: const ReadStoryTextHeader(
            chapterNumber: 3,
            title: 'The Rise of the Gods',
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
                    "Gaia and Uranus had many children, but not all of them were treated kindly. One of their children, Cronus, didn’t like how his father treated them. So, Cronus decided to take over.",
              ),
              SizedBox(
                height: 12,
              ),
              ReadStoryTexts(
                texts:
                    "Cronus overthrew Uranus and became the king of the world. But there was a twist! Cronus was afraid that his own children would try to overthrow him, so he swallowed each one as soon as they were born. That’s when his wife, Rhea, saved their youngest son, Zeus.",
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
