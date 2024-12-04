import 'package:flutter/material.dart';
import 'package:spacepal_project/pages/explore_planet_earth.dart';
import 'package:spacepal_project/pages/explore_planet_mars.dart';
import 'package:spacepal_project/pages/explore_planet_venus.dart';
import 'package:spacepal_project/shared/theme.dart';
import 'package:spacepal_project/widgets/hello_text_header.dart';
import 'package:spacepal_project/widgets/planet_cards.dart';

class ExplorePlanetPage extends StatefulWidget {
  const ExplorePlanetPage({super.key});

  @override
  State<ExplorePlanetPage> createState() => _ExplorePlanetPageState();
}

class _ExplorePlanetPageState extends State<ExplorePlanetPage> {
  Widget backgroundImage(height) {
    return Container(
      width: double.infinity,
      height: height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/explore_screen_page.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget customShadow(height) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.black.withOpacity(0), Colors.black],
        ),
      ),
    );
  }

  Widget headerTextContainer() {
    return Container(
      margin: EdgeInsets.only(
        top: 60,
        left: defaultMargin,
        right: defaultMargin,
      ),
      child: const HelloTextHeader(
        firstText: 'Buckle Up,',
        secondText: 'Future Space Travelers!',
        needImage: true,
      ),
    );
  }

  Widget cardContainer() {
    return Builder(builder: (localContext) {
      return Container(
        margin: EdgeInsets.only(
          top: 132,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          children: [
            PlanetCards(
              title: 'Earth',
              funFact: 'Where we live.',
              onTap: () {
                Navigator.push(
                  localContext,
                  MaterialPageRoute(
                    builder: (context) => const ExplorePlanetEarth(),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 32,
            ),
            PlanetCards(
              title: 'Mars',
              funFact: 'The red planet.',
              onTap: () {
                Navigator.push(
                  localContext,
                  MaterialPageRoute(
                    builder: (context) => const ExplorePlanetMars(),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 32,
            ),
            PlanetCards(
              title: 'Venus',
              funFact: 'It has a ring around it.',
              onTap: () {
                Navigator.push(
                  localContext,
                  MaterialPageRoute(
                    builder: (context) => const ExplorePlanetVenus(),
                  ),
                ).then((_) {
                  print('Returned to ExplorePlanetPage');
                });
              },
            ),
          ],
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: screenHeight,
          child: Stack(
            children: [
              backgroundImage(screenHeight),
              customShadow(screenHeight),
              headerTextContainer(),
              cardContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
