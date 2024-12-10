import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';
import 'package:spacepal_project/shared/theme.dart';
import 'package:spacepal_project/shared/global.dart' as globals;

class FunfactCards extends StatefulWidget {
  final String objUrl;
  final String planetName;
  final int planet;
  final VoidCallback onTap;
  final isLocked;
  const FunfactCards({
    super.key,
    required this.objUrl,
    required this.planetName,
    required this.onTap,
    required this.planet,
    this.isLocked = true,
  });

  @override
  State<FunfactCards> createState() => _FunfactCardsState();
}

class _FunfactCardsState extends State<FunfactCards> {
  @override
  void initState() {
    super.initState();
    _startPeriodicCall();
  }

  void _startPeriodicCall() {
    Timer.periodic(const Duration(seconds: 30), (timer) {
      getUserAchievements();
      print("Function called!");
    });
  }

  Future<void> getUserAchievements() async {
    try {
      DocumentSnapshot docSnapshot = await FirebaseFirestore.instance
          .collection('users')
          .doc(globals.username)
          .get();

      if (docSnapshot.exists) {
        globals.isAchieved1 = docSnapshot.get('isAchieved1') ?? false;
        globals.isAchieved2 = docSnapshot.get('isAchieved2') ?? false;
        globals.isAchieved3 = docSnapshot.get('isAchieved3') ?? false;
      } else {
        print("Nothing is found!");
      }
    } catch (e) {
      print("Error!");
    }
  }

  Widget locked() {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.8),
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
          child: Center(
            child: Text(
              'LOCKED!\nPlease explore more!',
              style: whiteTextStyle.copyWith(
                fontSize: 20,
                fontWeight: bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }

  Widget button() {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        color: kLightPurpleColor,
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 60,
            height: 60,
            margin: const EdgeInsets.only(
              right: 24,
              left: 20,
            ),
            child: Cube(
              onSceneCreated: (Scene scene) => scene.world.add(
                Object(
                  fileName: widget.objUrl,
                  scale: Vector3(
                    8,
                    8,
                    8,
                  ),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.planetName,
                style: whiteTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: bold,
                ),
              ),
              Text(
                'What makes it special?',
                style: whiteTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: regular,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return widget.isLocked
        ? GestureDetector(
            onTap: widget.onTap,
            child: button(),
          )
        : Stack(
            children: [
              GestureDetector(
                onTap: widget.onTap,
                child: button(),
              ),
              locked(),
            ],
          );
  }
}
