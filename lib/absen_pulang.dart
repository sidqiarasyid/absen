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
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Absen Pulang",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Profile(),));
                      },
                      child: Container(
                        width: 36,
                        height: 36,
                        child: Image.asset(
                          "assets/images/profilelogo.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
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
