import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:spacepal_project/shared/theme.dart';
import 'package:spacepal_project/widgets/explore_planet_background.dart';
import 'package:spacepal_project/widgets/explore_planet_go_back_button.dart';
import 'package:spacepal_project/widgets/read_story_text_header.dart';
import 'package:spacepal_project/widgets/read_story_texts.dart';

class ReadStoryPageCh5 extends StatefulWidget {
  const ReadStoryPageCh5({super.key});

  @override
  State<ReadStoryPageCh5> createState() => _ReadStoryPageCh5State();
}

class _ReadStoryPageCh5State extends State<ReadStoryPageCh5> {
  late final AudioPlayer player;

  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
    player.setReleaseMode(ReleaseMode.stop);

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(seconds: 3));
      await player.play(AssetSource('audio/screen5.mp3'));
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
          imageUrl: 'assets/read_story_chapter5_background.png',
        ),
        Container(
          margin: EdgeInsets.only(
            top: 60,
            left: defaultMargin,
            right: defaultMargin,
          ),
          child: const ReadStoryTextHeader(
            chapterNumber: 5,
            title: "Transition to Science - The Big Bang and Earth's Formation",
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
                    "Now, that's the ancient myth of how the Earth was created. But scientists tell us a different story. It's a story that takes us billions of years into the past. A story that begins with an incredible event called the Big Bang!",
              ),
              SizedBox(
                height: 12,
              ),
              ReadStoryTexts(
                texts:
                    "About 13.8 billion years ago, the universe was created in an enormous explosion called the Big Bang. This explosion scattered dust, gas, and tiny bits of stars all around space. These tiny pieces began to come together, pulled by gravity, and formed planets—including Earth",
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
