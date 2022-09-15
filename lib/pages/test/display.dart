import 'dart:io';

import 'package:flutter/material.dart';

class DisplayPicture extends StatefulWidget {
  final String imagePath;

  const DisplayPicture({Key? key, required this.imagePath}) : super(key: key);

  @override
  State<DisplayPicture> createState() => _DisplayPictureState();
}

class _DisplayPictureState extends State<DisplayPicture> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.file(
          File(widget.imagePath),
        ),
      ),
    );
  }
}
