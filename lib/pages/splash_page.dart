import 'dart:async';
import 'package:flutter/material.dart';
import 'package:spacepal_project/shared/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      if (mounted) {
        debugPrint("Navigating to /main");
        Navigator.pushNamed(context, '/sign-in');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkPurpleColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 214,
              width: 214,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon_logo.png'),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Space Pal',
              style: whiteTextStyle.copyWith(
                fontSize: 24,
                fontWeight: bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
