import 'package:absen/absen_masuk.dart';
import 'package:absen/absen_pulang.dart';
import 'package:absen/profile.dart';
import 'package:absen/sudah_absen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Main Menu",
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
              height: 20,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    "Selamat Datang, \nPak Jamil",
                    style: GoogleFonts.roboto(fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    "Selasa, 13 September 2022",
                    style: GoogleFonts.roboto(fontSize: 17, fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40,),
              Card(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    width: 290,
                    height: 280,
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AbsenMasukPage(),
                                ));
                          },
                          child: Container(
                            height: 220,
                            width: 170,
                            child: Image.asset(
                              "assets/images/imgmasuk.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text(
                          "Absen Masuk",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400, fontSize: 18),
                        )
                      ],
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
              Card(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    width: 290,
                    height: 280,
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AbsenPulangPage(),
                                ));
                          },
                          child: Container(
                            height: 220,
                            width: 170,
                            child: Image.asset(
                              "assets/images/imgpulang.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text(
                          "Absen Pulang",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400, fontSize: 18),
                        )
                      ],
                    ),
                  )),
            ],)
      ),
    );
  }
}
