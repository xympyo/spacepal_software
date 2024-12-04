import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 24.0;
double defaultRadius = 12.0;

Color kDarkPurpleColor = const Color(0xff2E073F);
Color kLightPurpleColor = const Color(0xff7A1CAC);
Color kWhiteColor = const Color(0xffeeeeee);
Color kYellowColor = const Color(0xffEC8305);
Color kBackgroundColor = const Color(0xfffafafa);
Color kInactiveColor = const Color(0xff9698A9);
Color kTransparentColor = Colors.transparent;

TextStyle whiteTextStyle = GoogleFonts.poppins(
  color: kWhiteColor,
);
TextStyle blackTextStyle = GoogleFonts.poppins(
  color: kDarkPurpleColor,
);
TextStyle purpleTextStyle = GoogleFonts.poppins(
  color: kLightPurpleColor,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;
