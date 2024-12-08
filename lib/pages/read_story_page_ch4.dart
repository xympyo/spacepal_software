import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:spacepal_project/shared/theme.dart';
import 'package:spacepal_project/widgets/explore_planet_background.dart';
import 'package:spacepal_project/widgets/explore_planet_go_back_button.dart';
import 'package:spacepal_project/widgets/read_story_text_header.dart';
import 'package:spacepal_project/widgets/read_story_texts.dart';

class ReadStoryPageCh4 extends StatefulWidget {
  const ReadStoryPageCh4({super.key});

  @override
  State<ReadStoryPageCh4> createState() => _ReadStoryPageCh4State();
}

class _ReadStoryPageCh4State extends State<ReadStoryPageCh4> {
  late final AudioPlayer player;

  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
    player.setReleaseMode(ReleaseMode.stop);

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(seconds: 3));
      await player.play(AssetSource('audio/screen4.mp3'));
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
          imageUrl: 'assets/read_story_chapter4_background.png',
        ),
        Container(
          margin: EdgeInsets.only(
            top: 60,
            left: defaultMargin,
            right: defaultMargin,
          ),
          child: const ReadStoryTextHeader(
            chapterNumber: 4,
            title: 'The Victory of Zeus and the Creation of the World',
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
                    "Zeus grew up strong and brave. He fought his father, Cronus, and won! After defeating Cronus, Zeus became the king of the gods. He split the world into three parts: Zeus ruled the skies, Poseidon ruled the seas, and Hades ruled the underworld.",
              ),
              SizedBox(
                height: 12,
              ),
              ReadStoryTexts(
                texts:
                    "Thanks to Zeus and the other gods, the Earth started to take its form as we know it today. The sky above, the oceans below, and the land in between!",
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
