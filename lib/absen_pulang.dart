import 'package:absen/profile.dart';
import 'package:absen/selesai_absen_masuk.dart';
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
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.02, bottom: MediaQuery.of(context).size.height * 0.05),
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
                height: 80,
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
                height: 260,
                width: 260,
                child: Image.asset(
                  "assets/images/imgpulang.png",
                  fit: BoxFit.cover,
                ),
              ),
              Text("Kamu belum absen pulang hari ini", style: GoogleFonts.roboto(fontWeight: FontWeight.w300, fontSize: 18),),
              SizedBox(height: 80,),
              Container(
                  width: 310,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SelesaiMasukPage(),));
                    },
                    child: Text("Ambil Foto"),
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
