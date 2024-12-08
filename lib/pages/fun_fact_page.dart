import 'package:flutter/material.dart';
import 'package:spacepal_project/pages/fun_fact_earth_page.dart';
import 'package:spacepal_project/pages/fun_fact_mars_page.dart';
import 'package:spacepal_project/shared/theme.dart';
import 'package:spacepal_project/widgets/explore_planet_background.dart';
import 'package:spacepal_project/widgets/funfact_cards.dart';
import 'package:spacepal_project/widgets/hello_text_header.dart';
import 'package:spacepal_project/shared/global.dart' as globals;

class FunFactPage extends StatefulWidget {
  const FunFactPage({super.key});

  @override
  State<FunFactPage> createState() => _FunFactPageState();
}

class _FunFactPageState extends State<FunFactPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        ExplorePlanetBackground(
          height: height,
          imageUrl: 'assets/funfact_screen_page.png',
        ),
        Container(
          margin: EdgeInsets.only(
            left: defaultMargin,
            right: defaultMargin,
            top: 60,
          ),
          child: HelloTextHeader(
            firstText: "Let's dive into Space!,",
            secondText: "Star Seekers",
            needImage: true,
            imageUrl: 'assets/icon_space.png',
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 186,
            left: defaultMargin,
            right: defaultMargin,
          ),
          child: Text(
            'Do you know?',
            style: whiteTextStyle.copyWith(
              fontSize: 28,
              fontWeight: bold,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 346,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(48),
              topRight: Radius.circular(48),
              bottomLeft: Radius.zero,
              bottomRight: Radius.zero,
            ),
          ),
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: defaultMargin,
                  right: defaultMargin,
                  top: 20,
                ),
                child: Text(
                  'Out-of-this-world Secrets!',
                  style: blackTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 12,
                  left: defaultMargin,
                  right: defaultMargin,
                ),
                child: Column(
                  children: [
                    FunfactCards(
                      objUrl: 'assets/3d/planetEarth.obj',
                      planetName: 'Earth',
                      planet: 1,
                      isLocked: globals.isAchieved1,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FunFactEarthPage(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    FunfactCards(
                      objUrl: 'assets/3d/planetMars.obj',
                      planetName: 'Mars',
                      isLocked: globals.isAchieved2,
                      planet: 2,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FunFactMarsPage(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    FunfactCards(
                      objUrl: 'assets/3d/planetVenus.obj',
                      planetName: 'Venus',
                      isLocked: globals.isAchieved3,
                      planet: 3,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FunFactEarthPage(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 160,
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
