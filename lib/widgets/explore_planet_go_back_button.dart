import 'package:flutter/material.dart';
import 'package:spacepal_project/shared/theme.dart';

class ExplorePlanetGoBackButton extends StatefulWidget {
  const ExplorePlanetGoBackButton({super.key});

  @override
  State<ExplorePlanetGoBackButton> createState() =>
      _ExplorePlanetGoBackButtonState();
}

class _ExplorePlanetGoBackButtonState extends State<ExplorePlanetGoBackButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Explore Other Planet',
              style: whiteTextStyle.copyWith(
                fontSize: 20,
                fontWeight: bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
