import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:spacepal_project/shared/theme.dart';
import 'package:spacepal_project/widgets/explore_planet_background.dart';
import 'package:spacepal_project/widgets/hello_text_header.dart';
import 'package:spacepal_project/shared/global.dart' as globals;

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _nameController = TextEditingController();
  bool _isLoading = false;
  String _errorMessage = "";
  bool loggedIn = false;
  final FocusNode _focusNode = FocusNode();

  Future<void> _login() async {
    String username = _nameController.text.trim();
    print("Username from TextEditingController: $username");

    if (username.isEmpty) {
      setState(() {
        _errorMessage = "Your name is empty..? It can't be!";
      });
      return;
    }

    setState(() {
      _isLoading = true;
      _errorMessage = "";
    });

    try {
      DocumentSnapshot<Map<String, dynamic>> docSnapshot =
          await FirebaseFirestore.instance
              .collection('users')
              .doc(username)
              .get();

      if (docSnapshot.exists) {
        setState(() {
          _isLoading = false;
          loggedIn = true;
          globals.username = username;
        });
      } else {
        await FirebaseFirestore.instance.collection('users').doc(username).set({
          'isAchieved1': false,
          'isAchieved2': false,
          'isAchieved3': false,
        });

        setState(() {
          _isLoading = false;
          loggedIn = true;
          globals.username = username;
        });
      }
    } catch (e) {
      setState(() {
        _isLoading = false;
        _errorMessage = "Hmmm..., something went wrong...";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          ExplorePlanetBackground(
            height: screenHeight,
            imageUrl: 'assets/read_story_chapter1_background.png',
          ),
          Container(
            margin: EdgeInsets.only(
              top: 60,
              left: defaultMargin,
              right: defaultMargin,
            ),
            child: const HelloTextHeader(
              firstText: 'Welcome!',
              secondText: 'Astronauts!',
              needImage: false,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 0,
              left: defaultMargin,
              right: defaultMargin,
            ),
            child: Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'What is your name, Explorer?',
                    style: whiteTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: bold,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextField(
                    focusNode: _focusNode,
                    controller: _nameController,
                    style: whiteTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: regular,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Please tell me your name',
                      errorText: _errorMessage.isEmpty ? null : _errorMessage,
                      errorStyle: whiteTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: regular,
                      ),
                      labelStyle: whiteTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: regular,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: kWhiteColor,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: kBackgroundColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(defaultRadius),
                      ),
                    ),
                    onPressed: () async {
                      print("Before login, username: ${_nameController.text}");
                      await _login();
                      if (loggedIn) {
                        Navigator.pushReplacementNamed(context, '/main');
                      }
                    },
                    child: Text(
                      'Start your adventure!',
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
