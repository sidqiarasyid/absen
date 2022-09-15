import 'package:absen/pages/test/display.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class TakePicturePhoto extends StatefulWidget {
  const TakePicturePhoto({Key? key}) : super(key: key);

  @override
  State<TakePicturePhoto> createState() => _TakePicturePhotoState();
}

class _TakePicturePhotoState extends State<TakePicturePhoto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Take Photo"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          takePicture();
        },
        child: Icon(Icons.camera_alt),
      ),
    );
  }

  Future<void> takePicture() async {
    final ImagePicker picker = ImagePicker();
    XFile? pickedImage;

    try {
      pickedImage = await picker.pickImage(source: ImageSource.camera);

      if (pickedImage != null) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DisplayPicture(
              imagePath: pickedImage!.path,
            ),
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("No image was selected"),
          ),
        );
      }
    } catch (e) {
      print(e);
      print("errorrrrrrrrrrrrrrrrrrrr");
    }
  }
}
