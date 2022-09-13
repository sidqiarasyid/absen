import 'package:absen/pages/selesai_absen_pulang.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AbsenPulangPage extends StatefulWidget {
  const AbsenPulangPage({Key? key}) : super(key: key);

  @override
  State<AbsenPulangPage> createState() => _AbsenPulangPageState();
}

class _AbsenPulangPageState extends State<AbsenPulangPage> {
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
                    "Absen Pulang",
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
                      "assets/images/imgpulang.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Kamu belum absen pulang hari ini",
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SelesaiPulangPage(),
                          ),
                        );
                      },
                      child: Text(
                        "Ambil Foto",
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xffC53F3F),
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
