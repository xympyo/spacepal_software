import 'package:flutter/material.dart';
import 'package:spacepal_project/shared/theme.dart';

class ExplorePlanetGoBackButton extends StatefulWidget {
  final String text;
  final bool isWhiteMode;
  const ExplorePlanetGoBackButton({
    super.key,
    this.text = 'Explore Other Planet',
    this.isWhiteMode = true,
  });

  @override
  State<ExplorePlanetGoBackButton> createState() =>
      _ExplorePlanetGoBackButtonState();
}

class _ExplorePlanetGoBackButtonState extends State<ExplorePlanetGoBackButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        style: TextButton.styleFrom(
          backgroundColor: widget.isWhiteMode ? kWhiteColor : kDarkPurpleColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
        ),
        child: Text(
          widget.text,
          style: widget.isWhiteMode
              ? blackTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: bold,
                )
              : whiteTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: bold,
                ),
        ),
      ),
    );
  }
}
