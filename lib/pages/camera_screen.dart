import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

class CameraScreen extends StatefulWidget {
  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  late CameraController _controller;
  late List<CameraDescription> _cameras;
  bool _isInitialized = false;
  int _currentCameraIndex = 0;

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  // Initialize the camera
  Future<void> _initializeCamera() async {
    _cameras = await availableCameras();
    _controller = CameraController(
      _cameras[_currentCameraIndex],
      ResolutionPreset.high,
    );
    bool isCamera = false;

    await _controller.initialize();
    setState(() {
      _isInitialized = true;
    });
  }

  Future<void> _switchCamera() async {
    _currentCameraIndex = (_currentCameraIndex + 1) % _cameras.length;

    await _controller.dispose();

    // Initialize the new camera
    _controller = CameraController(
      _cameras[_currentCameraIndex],
      ResolutionPreset.high,
    );

    await _controller.initialize();
    setState(() {
      _isInitialized = true;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_isInitialized) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("The Planet?"),
        actions: [
          IconButton(
            icon: Icon(Icons.switch_camera),
            onPressed: _switchCamera,
          ),
        ],
      ),
      body: Stack(
        children: [
          CameraPreview(_controller),
          Center(
            child: Cube(
              onSceneCreated: (Scene scene) => scene.world.add(
                Object(
                  fileName: 'assets/3d/planetEarth.obj',
                  scale: Vector3(4, 4, 4),
                  position: Vector3(0, 0, -1),
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          try {
            final image = await _controller.takePicture();
            print('Image captured: ${image.path}');
          } catch (e) {
            print('Error capturing image: $e');
          }
        },
        child: Icon(Icons.camera_alt),
      ),
    );
  }
}