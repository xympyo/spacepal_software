import 'package:flutter/material.dart';
import 'package:spacepal_project/pages/read_story_page_ch1.dart';
import 'package:spacepal_project/pages/read_story_page_ch2.dart';
import 'package:spacepal_project/pages/read_story_page_ch3.dart';
import 'package:spacepal_project/pages/read_story_page_ch4.dart';
import 'package:spacepal_project/pages/read_story_page_ch5.dart';
import 'package:spacepal_project/pages/read_story_page_ch6.dart';
import 'package:spacepal_project/pages/read_story_page_ch7.dart';
import 'package:spacepal_project/shared/theme.dart';
import 'package:spacepal_project/widgets/hello_text_header.dart';
import 'package:spacepal_project/widgets/read_story_card.dart';

class ReadStoryPage extends StatefulWidget {
  const ReadStoryPage({super.key});

  @override
  State<ReadStoryPage> createState() => _ReadStoryPageState();
}

class _ReadStoryPageState extends State<ReadStoryPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackgroundColor,
      margin: EdgeInsets.only(
        top: 16,
        left: defaultMargin,
        right: defaultMargin,
      ),
      child: ListView(
        children: [
          const HelloTextHeader(
            firstText: "There's this saying of:",
            secondText: "Once upon a time...",
            color: 'blackTextStyle',
            needImage: false,
          ),
          Container(
            margin: const EdgeInsets.only(top: 40, bottom: 120),
            child: Column(
              children: [
                ReadStoryCard(
                  imageUrl: 'assets/read_story_chapter1_img1.png',
                  chapterNumber: 1,
                  chapterTitle: 'Introduction',
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ReadStoryPageCh1(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ReadStoryCard(
                  imageUrl: 'assets/read_story_chapter2_img1.png',
                  chapterNumber: 2,
                  chapterTitle: 'Mythology Begins - Chaos and Gaia',
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ReadStoryPageCh2(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ReadStoryCard(
                  imageUrl: 'assets/read_story_chapter3_img1.png',
                  chapterNumber: 3,
                  chapterTitle: 'The Rise of the Gods',
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ReadStoryPageCh3(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ReadStoryCard(
                  imageUrl: 'assets/read_story_chapter4_img1.png',
                  chapterNumber: 4,
                  chapterTitle:
                      'The Victory of Zeus and the Creation of the World',
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ReadStoryPageCh4(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ReadStoryCard(
                  imageUrl: 'assets/read_story_chapter5_img1.png',
                  chapterNumber: 5,
                  chapterTitle: "The Big Bang and Earth's Formation",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ReadStoryPageCh5(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ReadStoryCard(
                  imageUrl: 'assets/read_story_chapter6_img1.png',
                  chapterNumber: 6,
                  chapterTitle: 'How Earth Was Born',
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ReadStoryPageCh6(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ReadStoryCard(
                  imageUrl: 'assets/read_story_chapter7_img1.png',
                  chapterNumber: 7,
                  chapterTitle: 'The Beginning of Life',
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ReadStoryPageCh7(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
