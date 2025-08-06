import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Qrgenerator extends StatefulWidget {
  const Qrgenerator({super.key});

  @override
  State<Qrgenerator> createState() => _QrgeneratorState();
}

class _QrgeneratorState extends State<Qrgenerator> {
  final String data = "ishan941.medium.com";
  void imagePicker() {
    final ImagePicker picker = ImagePicker();
    picker.pickImage(source: ImageSource.camera); //for calling pdf and images
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            QrImageView(data: data, size: 200),
            ElevatedButton(
              onPressed: () {
                imagePicker();
              },
              child: Text("photos"),
            ),
          ],
        ),
      ),
    );
  }
}
