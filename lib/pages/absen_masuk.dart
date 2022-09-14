import 'package:absen/pages/selesai_absen_masuk.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class AbsenMasukPage extends StatefulWidget {
  const AbsenMasukPage({Key? key}) : super(key: key);

  @override
  State<AbsenMasukPage> createState() => _AbsenMasukPageState();
}

class _AbsenMasukPageState extends State<AbsenMasukPage> {
  Future _takePicture(BuildContext context) async {
    final navigator = Navigator.of(context);
    final ImagePicker picker = ImagePicker();
    XFile? pickedImage;

    try {
      pickedImage = await picker.pickImage(
          source: ImageSource.camera,
          preferredCameraDevice: CameraDevice.front);

      if (pickedImage != null) {
        await navigator.push(
          MaterialPageRoute(
            builder: (context) =>
                SelesaiMasukPage(imagePath: pickedImage!.path),
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
      print("error");
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 15),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_rounded,
                      size: 28,
                    ),
                    splashRadius: 30,
                    alignment: Alignment.centerLeft,
                  ),
                  Text(
                    "Absen Masuk",
                    style: GoogleFonts.roboto(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Text(
                    "12 September",
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400, fontSize: 24),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: size.height * 0.3,
                    child: Image.asset(
                      "assets/images/imgmasuk.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Kamu belum absen masuk hari ini",
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w300, fontSize: 18),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Container(
                    width: size.width,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () {
                        _takePicture(context);
                      },
                      child: Text(
                        "Ambil Foto",
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
