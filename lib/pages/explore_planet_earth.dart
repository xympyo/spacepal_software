import 'package:flutter/material.dart';
import 'package:spacepal_project/shared/theme.dart';
import 'package:spacepal_project/widgets/explore_planet_background.dart';
import 'package:spacepal_project/widgets/explore_planet_cards.dart';
import 'package:spacepal_project/widgets/explore_planet_go_back_button.dart';
import 'package:spacepal_project/widgets/explore_planets.dart';
import 'package:spacepal_project/widgets/hello_text_header.dart';

class ExplorePlanetEarth extends StatelessWidget {
  const ExplorePlanetEarth({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          ExplorePlanetBackground(
            height: screenHeight,
            imageUrl: 'assets/explore_screen_earth_page.png',
          ),
          ListView(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: defaultMargin,
                  right: defaultMargin,
                  top: 16,
                ),
                child: const HelloTextHeader(
                  firstText: 'Welcome, Space Travelers!',
                  secondText: 'To Earth.',
                  needImage: false,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const ExplorePlanets(
                planetName: 'Earth',
              ),
              Container(
                margin: EdgeInsets.only(
                  left: defaultMargin,
                  right: defaultMargin,
                  top: 20,
                ),
                child: const Column(
                  children: [
                    ExplorePlanetCards(
                      height: 200,
                      imageUrl: 'assets/earth_card_image1.png',
                      titleDesc: 'Basic Characteristics',
                      firstDesc:
                          'Home Sweet Home! Earth is our planet, the only one we know where life exists. It has air we can breathe, water we can drink, and plants and animals all around us.',
                      secondDesc:
                          'Earth is shaped like a slightly squished ball called an oblate spheroid.',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ExplorePlanetCards(
                      height: 154,
                      imageUrl: 'assets/earth_card_image2.png',
                      titleDesc: 'Geography',
                      firstDesc:
                          "70% Water! Most of Earth is covered by oceans, seas, lakes, and rivers. That's why it looks blue from space.",
                      secondDesc:
                          'The remaining 30% is land, which includes mountains, forests, deserts, and cities where we live.',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ExplorePlanetCards(
                      height: 172,
                      imageUrl: 'assets/earth_card_image3.png',
                      titleDesc: 'Size and Gravity',
                      firstDesc:
                          "Earth is 12,742 kilometers across. Imagine a giant measuring tape wrapping around Earth—it would go about 40,000 kilometers!",
                      secondDesc:
                          "Gravity? That's what keeps us on the ground. On Earth, we can jump but not float away.",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ExplorePlanetCards(
                      height: 154,
                      imageUrl: 'assets/earth_card_image4.png',
                      titleDesc: 'Temperature and Weather',
                      firstDesc:
                          "Earth has everything: sunny days, rainy nights, snowy winters, and windy autumns.",
                      secondDesc:
                          "The hottest places can get up to 56°C, while the coldest places, like Antarctica, can drop below -80°C.",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ExplorePlanetCards(
                      height: 154,
                      imageUrl: 'assets/earth_card_image5.png',
                      titleDesc: 'Moons',
                      firstDesc:
                          "Earth has one moon, simply called the Moon. It's so big that you can see it glowing in the night sky!",
                      secondDesc:
                          "Fun fact: The Moon's gravity creates tides—the rise and fall of the ocean's water.",
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    ExplorePlanetGoBackButton(),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
