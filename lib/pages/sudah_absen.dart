import 'package:absen/pages/selesai_absen_masuk.dart';
import 'package:flutter/material.dart';

import 'package:absen/pages/profile.dart';
import 'package:google_fonts/google_fonts.dart';

class SudahAbsenPage extends StatefulWidget {
  const SudahAbsenPage({Key? key}) : super(key: key);

  @override
  State<SudahAbsenPage> createState() => _SudahAbsenPageState();
}

class _SudahAbsenPageState extends State<SudahAbsenPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "12 September",
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400, fontSize: 24),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 150,
                width: 150,
                child: Image.asset(
                  "assets/images/check.png",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Kamu sudah absen hari ini",
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w300, fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
