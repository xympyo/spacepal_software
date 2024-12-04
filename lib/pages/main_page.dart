import 'package:flutter/material.dart';
import 'package:spacepal_project/pages/explore_planet_page.dart';
import 'package:spacepal_project/pages/fun_fact_page.dart';
import 'package:spacepal_project/pages/read_story_page.dart';
import 'package:spacepal_project/widgets/icon_navigation.dart';
import 'package:spacepal_project/shared/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int numActive = 1;
  int selectedPage = 1;
  @override
  Widget build(BuildContext context) {
    Widget buildContent() {
      switch (selectedPage) {
        case 0:
          return const ReadStoryPage();
        case 1:
          return const ExplorePlanetPage();
        case 2:
          return const FunFactPage();
        default:
          return const ExplorePlanetPage();
      }
    }

    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.only(
              left: defaultMargin, right: defaultMargin, bottom: 32),
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() => numActive = 0);
                  setState(() => selectedPage = 0);
                },
                child: IconNavigation(
                  activeImageUrl: 'assets/icon_story_active.png',
                  inactiveImageUrl: 'assets/icon_story_inactive.png',
                  iconIndex: 0,
                  numActive: numActive,
                  isSelected: numActive == 0,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() => numActive = 1);
                  setState(() => selectedPage = 1);
                },
                child: IconNavigation(
                  activeImageUrl: 'assets/icon_explore_active.png',
                  inactiveImageUrl: 'assets/icon_explore_inactive.png',
                  iconIndex: 1,
                  numActive: numActive,
                  isSelected: numActive == 1,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() => numActive = 2);
                  setState(() => selectedPage = 2);
                },
                child: IconNavigation(
                  activeImageUrl: 'assets/icon_funfact_active.png',
                  inactiveImageUrl: 'assets/icon_funfact_inactive.png',
                  iconIndex: 2,
                  numActive: numActive,
                  isSelected: numActive == 2,
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          buildContent(),
          customBottomNavigation(),
        ],
      ),
    );
  }
}
