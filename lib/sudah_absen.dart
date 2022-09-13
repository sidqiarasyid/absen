import 'package:absen/selesai_absen_masuk.dart';
import 'package:flutter/material.dart';

import 'package:absen/profile.dart';
import 'package:google_fonts/google_fonts.dart';

class SudahAbsenPage extends StatefulWidget {
  const SudahAbsenPage({Key? key}) : super(key: key);

  @override
  State<SudahAbsenPage> createState() => _SudahAbsenPageState();
}

class _SudahAbsenPageState extends State<SudahAbsenPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            width: double.infinity ,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 70,
                ),
                Text(
                  "12 September",
                  style:
                  GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 24),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 200,
                  width: 200,
                  child: Image.asset(
                    "assets/images/check.png",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 15,),
                Text("Kamu sudah absen hari ini", style: GoogleFonts.roboto(fontWeight: FontWeight.w300, fontSize: 18),),
              ],
            ),
          ),
        ));
  }
}
