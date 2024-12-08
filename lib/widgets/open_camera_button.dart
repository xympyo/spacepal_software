import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:spacepal_project/pages/camera_screen.dart';
import 'package:spacepal_project/shared/theme.dart';
import 'package:spacepal_project/shared/global.dart' as globals;

class OpenCameraButton extends StatefulWidget {
  final int numberObj;
  final int whichPlanet;
  const OpenCameraButton({
    super.key,
    required this.numberObj,
    required this.whichPlanet,
  });

  @override
  State<OpenCameraButton> createState() => _OpenCameraButtonState();
}

class _OpenCameraButtonState extends State<OpenCameraButton> {
  Future<void> _updateAchievement() async {
    try {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(globals.username)
          .update({
        'isAchieved${widget.whichPlanet}': true,
      });
      print("User updated successfully!");
    } catch (e) {
      print("Error updating user!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CameraScreen(
                numberObj: widget.numberObj,
              ),
            ),
          );
          _updateAchievement();
        },
        style: TextButton.styleFrom(
          backgroundColor: kWhiteColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              defaultRadius,
            ),
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 25,
              height: 20,
              margin: const EdgeInsets.only(right: 12),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icon_camera.png',
                  ),
                ),
              ),
            ),
            Text(
              'See how it looks!',
              style: blackTextStyle.copyWith(
                fontSize: 12,
                fontWeight: bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
