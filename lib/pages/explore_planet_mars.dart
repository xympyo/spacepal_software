import 'package:flutter/material.dart';
import 'package:spacepal_project/shared/theme.dart';
import 'package:spacepal_project/widgets/explore_planet_background.dart';
import 'package:spacepal_project/widgets/explore_planet_cards.dart';
import 'package:spacepal_project/widgets/explore_planet_go_back_button.dart';
import 'package:spacepal_project/widgets/explore_planets.dart';
import 'package:spacepal_project/widgets/hello_text_header.dart';
import 'package:spacepal_project/widgets/open_camera_button.dart';

class ExplorePlanetMars extends StatelessWidget {
  const ExplorePlanetMars({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          ExplorePlanetBackground(
            height: screenHeight,
            imageUrl: 'assets/explore_screen_mars_page.png',
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
                  secondText: 'To Mars.',
                  needImage: false,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const ExplorePlanets(
                planetName: 'Mars',
                objUrl: 'assets/3d/planetMars.obj',
                planetSize: 8,
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
                      imageUrl: 'assets/mars_card_image1.png',
                      titleDesc: 'Basic Characteristics',
                      firstDesc:
                          "Mars is often called the Red Planet because its surface looks rusty, like old iron",
                      secondDesc:
                          "It's much colder and smaller than Earth, with dusty plains, rocky hills, and giant mountains.",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ExplorePlanetCards(
                      height: 172,
                      imageUrl: 'assets/mars_card_image2.png',
                      titleDesc: 'Geography',
                      firstDesc:
                          "Mars has the largest volcano in the Solar System: Olympus Mons. It's three times taller than Mount Everest!",
                      secondDesc:
                          "The planet also has a massive canyon system, Valles Marineris, which is 4,000 kilometers long.",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ExplorePlanetCards(
                      height: 136,
                      imageUrl: 'assets/mars_card_image3.png',
                      titleDesc: 'Size and Gravity',
                      firstDesc:
                          "Mars is smaller than Earth—about half its size.",
                      secondDesc:
                          "Gravity on Mars is weaker, so if you weigh 30 kg on Earth, you'd weigh only 11 kg on Mars!",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ExplorePlanetCards(
                      height: 154,
                      imageUrl: 'assets/mars_card_image4.png',
                      titleDesc: 'Temperature and Weather',
                      firstDesc:
                          "Mars is super cold, with temperatures dropping to -80°C at night.",
                      secondDesc:
                          "It has giant dust storms that can last for months. These storms are so big, they can cover the whole planet!",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ExplorePlanetCards(
                      height: 106,
                      imageUrl: 'assets/mars_card_image5.png',
                      titleDesc: 'Moons',
                      firstDesc:
                          "Mars has two tiny moons, Phobos and Deimos. They're not round like our Moon—they look more like potatoes!",
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    OpenCameraButton(
                      numberObj: 2,
                      whichPlanet: 2,
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
