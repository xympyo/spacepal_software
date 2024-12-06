import 'package:flutter/material.dart';
import 'package:spacepal_project/shared/theme.dart';
import 'package:spacepal_project/widgets/explore_planet_background.dart';
import 'package:spacepal_project/widgets/funfact_cards.dart';
import 'package:spacepal_project/widgets/hello_text_header.dart';

class FunFactPage extends StatelessWidget {
  const FunFactPage({super.key});

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
                child: const Column(
                  children: [
                    FunfactCards(
                      objUrl: 'assets/3d/planetEarth.obj',
                      planetName: 'Earth',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FunfactCards(
                      objUrl: 'assets/3d/planetMars.obj',
                      planetName: 'Mars',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FunfactCards(
                      objUrl: 'assets/3d/planetVenus.obj',
                      planetName: 'Venus',
                    ),
                    SizedBox(
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
