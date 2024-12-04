import 'package:flutter/material.dart';
import 'package:spacepal_project/pages/explore_planet_earth.dart';
import 'package:spacepal_project/pages/explore_planet_page.dart';
import 'package:spacepal_project/pages/fun_fact_page.dart';
import 'package:spacepal_project/pages/main_page.dart';
import 'package:spacepal_project/pages/read_story_page.dart';
import 'package:spacepal_project/pages/splash_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashPage(),
        '/main': (context) => const MainPage(),
        '/explore-planet': (context) => const ExplorePlanetPage(),
        '/read-story': (context) => const ReadStoryPage(),
        '/fun-fact': (context) => const FunFactPage(),
        '/explore-planet-earth': (context) => const ExplorePlanetEarth(),
      },
    );
  }
}
