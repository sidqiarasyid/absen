import 'package:absen/selesai_absen_masuk.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AbsenMasukPage extends StatefulWidget {
  const AbsenMasukPage({Key? key}) : super(key: key);

  @override
  State<AbsenMasukPage> createState() => _AbsenMasukPageState();
}

class _AbsenMasukPageState extends State<AbsenMasukPage> {
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
                  "Absen Masuk",
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
            "05:32 WIB",
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
              "assets/images/imgmasuk.png",
              fit: BoxFit.cover,
            ),
          ),
          Text("Kamu belum absen masuk hari ini", style: GoogleFonts.roboto(fontWeight: FontWeight.w300, fontSize: 18),),
          SizedBox(height: 80,),
          Container(
              width: 310,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SelesaiMasukPage(),));
                },
                child: Text("Isi Absen"),
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16))),
              )),
        ],
      ),
    ));
  }
}
