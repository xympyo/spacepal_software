import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:spacepal_project/shared/theme.dart';
import 'package:spacepal_project/widgets/explore_planet_background.dart';
import 'package:spacepal_project/widgets/explore_planet_go_back_button.dart';
import 'package:spacepal_project/widgets/read_story_text_header.dart';
import 'package:spacepal_project/widgets/read_story_texts.dart';

class ReadStoryPageCh7 extends StatefulWidget {
  const ReadStoryPageCh7({super.key});

  @override
  State<ReadStoryPageCh7> createState() => _ReadStoryPageCh7State();
}

class _ReadStoryPageCh7State extends State<ReadStoryPageCh7> {
  late final AudioPlayer player;

  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
    player.setReleaseMode(ReleaseMode.stop);

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(seconds: 3));
      await player.play(AssetSource('audio/screen7.mp3'));
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
          imageUrl: 'assets/read_story_chapter7_background.png',
        ),
        Container(
          margin: EdgeInsets.only(
            top: 60,
            left: defaultMargin,
            right: defaultMargin,
          ),
          child: const ReadStoryTextHeader(
            chapterNumber: 7,
            title: "The Beginning of Life",
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
                    "As Earth cooled, water appeared on the surface, and tiny life forms began to grow. Over millions of years, those life forms evolved into all the plants and animals we see today!",
              ),
              SizedBox(
                height: 12,
              ),
              ReadStoryTexts(
                texts:
                    "From the myths of the gods to the science of the Big Bang, the story of Earth is full of wonder and excitement. Earth has a magical past and a scientific future!",
              )
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
