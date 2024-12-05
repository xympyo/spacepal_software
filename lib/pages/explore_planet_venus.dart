import 'package:flutter/material.dart';
import 'package:spacepal_project/shared/theme.dart';
import 'package:spacepal_project/widgets/explore_planet_background.dart';
import 'package:spacepal_project/widgets/explore_planet_cards.dart';
import 'package:spacepal_project/widgets/explore_planet_go_back_button.dart';
import 'package:spacepal_project/widgets/explore_planets.dart';
import 'package:spacepal_project/widgets/hello_text_header.dart';

class ExplorePlanetVenus extends StatelessWidget {
  const ExplorePlanetVenus({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          ExplorePlanetBackground(
            height: screenHeight,
            imageUrl: 'assets/explore_screen_venus_page.png',
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
                  secondText: 'To Venus.',
                  needImage: false,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const ExplorePlanets(
                planetName: 'Venus',
                objUrl: 'assets/3d/planetEarth.obj',
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
                      height: 154,
                      imageUrl: 'assets/venus_card_image1.png',
                      titleDesc: 'Basic Characteristics',
                      firstDesc:
                          "Venus is Earth's “twin” because it's about the same size. But don't be fooled—Venus is VERY different!",
                      secondDesc:
                          "Venus is the hottest planet in the Solar System, even though Mercury is closer to the Sun",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ExplorePlanetCards(
                      height: 154,
                      imageUrl: 'assets/venus_card_image2.png',
                      titleDesc: 'Geography',
                      firstDesc:
                          "Venus is covered by thick clouds that trap heat. Underneath, there are mountains, volcanoes, and flat plains.",
                      secondDesc:
                          "Its surface is rocky and cracked, like a giant dry desert.",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ExplorePlanetCards(
                      height: 154,
                      imageUrl: 'assets/venus_card_image3.png',
                      titleDesc: 'Size and Gravity',
                      firstDesc:
                          "Venus is just a little smaller than Earth, but the difference is so small you'd hardly notice.",
                      secondDesc:
                          "Gravity on Venus is close to Earth's, so you wouldn't feel much lighter or heavier there.",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ExplorePlanetCards(
                      height: 136,
                      imageUrl: 'assets/venus_card_image4.png',
                      titleDesc: 'Temperature and Weather',
                      firstDesc:
                          "Venus is over 450°C—hot enough to melt metal!",
                      secondDesc:
                          "Its air is filled with carbon dioxide and sulfuric acid clouds, so it's not safe for humans to breathe.",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ExplorePlanetCards(
                      height: 106,
                      imageUrl: 'assets/venus_card_image5.png',
                      titleDesc: 'Moons',
                      firstDesc:
                          "Venus has no moons. It's one of the few planets that doesn't have any!",
                    ),
                    SizedBox(
                      height: 160,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.only(bottom: 40),
              child: const ExplorePlanetGoBackButton(),
            ),
          )
        ],
      ),
    );
  }
}
