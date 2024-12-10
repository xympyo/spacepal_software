import 'package:flutter/material.dart';
import 'package:spacepal_project/shared/theme.dart';

class FunfactContentImage extends StatelessWidget {
  final String imageUrl;
  const FunfactContentImage({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    Widget image() {
      return Container(
        width: width,
        height: 280,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imageUrl),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    Widget shadow() {
      return Container(
        width: width,
        height: 280,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black.withOpacity(0.3),
              Colors.black.withOpacity(0.8)
            ],
          ),
        ),
      );
    }

    Widget goBack() {
      return Container(
        margin: EdgeInsets.only(top: 42, left: defaultMargin),
        width: 60,
        height: 40,
        child: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icon_go_back.png'),
              ),
            ),
          ),
        ),
      );
    }

    Widget likeBtn() {
      return Align(
        alignment: Alignment.topRight,
        child: Container(
          width: 70,
          height: 70,
          margin: EdgeInsets.only(
            top: 246,
            right: defaultMargin,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            shape: BoxShape.circle,
          ),
          child: TextButton(
            onPressed: () {},
            child: Container(
              width: 32,
              height: 32,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon_heart.png'),
                ),
              ),
            ),
          ),
        ),
      );
    }

    return Stack(
      children: [
        image(),
        shadow(),
        goBack(),
        likeBtn(),
      ],
    );
  }
}
