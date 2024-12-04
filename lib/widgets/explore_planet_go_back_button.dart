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
      child: TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        style: TextButton.styleFrom(
          backgroundColor: kWhiteColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
        ),
        child: Text(
          'Explore Other Planet',
          style: blackTextStyle.copyWith(
            fontSize: 20,
            fontWeight: bold,
          ),
        ),
      ),
    );
  }
}
