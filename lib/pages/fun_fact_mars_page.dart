import 'package:flutter/material.dart';
import 'package:spacepal_project/widgets/explore_planet_go_back_button.dart';
import 'package:spacepal_project/widgets/funfact_content_image.dart';
import 'package:spacepal_project/widgets/read_story_texts.dart';
import 'package:spacepal_project/shared/theme.dart';

class FunFactMarsPage extends StatelessWidget {
  FunFactMarsPage({super.key});

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
                    imageUrl: 'assets/funfact_screen_mars1.png',
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Mars has Mountains?',
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
                              "Mars has the tallest volcano in the solar system, Olympus Mons, standing 21.9 kilometers high—three times taller than Mount Everest!",
                          isWhite: false,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const ReadStoryTexts(
                          texts:
                              "You know what’s even more insane?\nIf Mount Everest were stacked on top of itself three times, it still wouldn’t reach the summit of Olympus Mons! It's like putting 2,000 Eiffel Towers one on top of the other",
                          isWhite: false,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const ReadStoryTexts(
                          texts:
                              "And the base of Olympus Mons is 600 kilometers (370 miles) in diameter, roughly the size of France.",
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
                    imageUrl: 'assets/funfact_screen_mars2.png',
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Mars has Storms?!',
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
                              "Martian dust storms can cover the entire planet, making them the largest dust storms in the solar system...",
                          isWhite: false,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const ReadStoryTexts(
                          texts:
                              "You might think “how big?” but hear this...\nImagine a sandstorm so huge that it covers all the continents on Earth at the same time. That’s Mars during a global dust storm!",
                          isWhite: false,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const ReadStoryTexts(
                          texts:
                              "And if that’s not crazy enough for you.., some storms actually go on for weeks to months, with wind speeds reaching 60 miles per hour (100 km/h).",
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
                    imageUrl: 'assets/funfact_screen_mars3.png',
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                    child: Text(
                      'Mars... Has Valleys? They are... Massive...',
                      style: blackTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: bold,
                      ),
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.center,
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
                              "Valles Marineris is over 4,000 kilometers (2,500 miles) long, 200 kilometers (120 miles) wide, and 7 kilometers (4 miles) deep.",
                          isWhite: false,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const ReadStoryTexts(
                          texts:
                              "It's like...If you laid it across the United States, it would stretch from New York City to Los Angeles!",
                          isWhite: false,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const ReadStoryTexts(
                          texts:
                              "And who will wins, the longest valleys on Earth, or Valles Marineris?\nWell, the Grand Canyon is only 446 kilometers (277 miles) long, making Valles Marineris a true monster.",
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
