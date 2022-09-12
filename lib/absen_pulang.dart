import 'package:absen/selesai_absen_masuk.dart';
import 'package:absen/selesai_absen_pulang.dart';
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
    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Absen Pulang",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.person, size: 28,))
                  ],
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Text(
                "12 September",
                style:
                GoogleFonts.roboto(fontWeight: FontWeight.w500, fontSize: 24),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "17:32 WIB",
                style:
                GoogleFonts.roboto(fontWeight: FontWeight.w300, fontSize: 48),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 300,
                width: 300,
                child: Image.asset(
                  "assets/images/imgpulang.png",
                  fit: BoxFit.cover,
                ),
              ),
              Text("Kamu belum absen masuk hari ini", style: GoogleFonts.roboto(fontWeight: FontWeight.w300, fontSize: 18),),
              SizedBox(height: 80,),
              Container(
                  width: 310,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SelesaiPulangPage(),));
                    },
                    child: Text("Isi Absen"),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xffC53F3F),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16))),
                  )),
            ],
          ),
        ));
  }
}
