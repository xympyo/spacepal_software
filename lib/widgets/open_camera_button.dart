import 'package:flutter/material.dart';
import 'package:spacepal_project/pages/camera_screen.dart';
import 'package:spacepal_project/shared/theme.dart';

class OpenCameraButton extends StatelessWidget {
  const OpenCameraButton({super.key});

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
              builder: (context) => CameraScreen(),
            ),
          );
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
