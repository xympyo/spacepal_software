import 'package:flutter/material.dart';
import 'package:spacepal_project/shared/theme.dart';
import 'package:spacepal_project/widgets/explore_planet_go_back_button.dart';
import 'package:spacepal_project/widgets/funfact_content_image.dart';
import 'package:spacepal_project/widgets/read_story_texts.dart';

class FunFactEarthPage extends StatefulWidget {
  const FunFactEarthPage({super.key});

  @override
  State<FunFactEarthPage> createState() => _FunFactEarthPageState();
}

class _FunFactEarthPageState extends State<FunFactEarthPage> {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        scrollDirection: Axis.horizontal,
        children: [
          Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const FunfactContentImage(
                    imageUrl: 'assets/funfact_screen_earth1.png',
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Earth Tallest Mountain',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: defaultMargin,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Space Travelers',
                          style: blackTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: bold,
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const ReadStoryTexts(
                          texts:
                              "Did you know that,Earth's tallest mountain, Mount Everest, is 8.8 kilometers high.",
                          isWhite: false,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const ReadStoryTexts(
                          texts:
                              "And if you stack 1,100 two-story houses, it would reach a little higher than Mount Everest! ",
                          isWhite: false,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const ReadStoryTexts(
                          texts:
                              "Or, of course about the 94 times of Statue of Liberty itself!\nCan you imagine how tall is Mount Everest?!",
                          isWhite: false,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(
                    bottom: 40,
                    left: defaultMargin,
                    right: defaultMargin,
                  ),
                  child: const ExplorePlanetGoBackButton(
                    text: 'Explore other Planets.',
                    isWhiteMode: false,
                  ),
                ),
              )
            ],
          ),
          Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const FunfactContentImage(
                    imageUrl: 'assets/funfact_screen_earth2.png',
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Around 70% of Earth is water?!',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: defaultMargin,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Space Travelers',
                          style: blackTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: bold,
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const ReadStoryTexts(
                          texts:
                              "It’s no surprises that Earth is big, and we may only see lands around, but did you actually know that, Earth is 70% water?",
                          isWhite: false,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const ReadStoryTexts(
                          texts:
                              "Scientists estimates that Earth holds around 1.332 billion cubic kilometers of Water!, which weights about 1.45 quintillion tons!",
                          isWhite: false,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const ReadStoryTexts(
                          texts:
                              "That's like... The weight of 10 million Mount Everests if they were made entirely of water!",
                          isWhite: false,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(
                    bottom: 40,
                    left: defaultMargin,
                    right: defaultMargin,
                  ),
                  child: const ExplorePlanetGoBackButton(
                    text: 'Explore other Planets.',
                    isWhiteMode: false,
                  ),
                ),
              )
            ],
          ),
          Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const FunfactContentImage(
                    imageUrl: 'assets/funfact_screen_earth3.png',
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    'How can Earth produce Oxygen?',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: defaultMargin,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Space Travelers',
                          style: blackTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: bold,
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const ReadStoryTexts(
                          texts:
                              "The Amazon Rainforest produces 20% of the oxygen we breathe. It's called the 'lungs of the Earth'!",
                          isWhite: false,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const ReadStoryTexts(
                          texts:
                              "But do you know, “what” produces the rest?\nTiny organism in the ocean, called “Phytoplankton”, they produces around 50-80% of the oxygen in Earth’s atmosphere!",
                          isWhite: false,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(
                    bottom: 40,
                    left: defaultMargin,
                    right: defaultMargin,
                  ),
                  child: const ExplorePlanetGoBackButton(
                    text: 'Explore other Planets.',
                    isWhiteMode: false,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
