import 'package:absen/pages/absen_masuk.dart';
import 'package:absen/pages/absen_pulang.dart';
import 'package:absen/pages/profile.dart';
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
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Main Menu",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Profile(),
                          ),
                        );
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
                SizedBox(
                  height: size.height * 0.025,
                ),
                Text(
                  "Selamat Datang,\nPak Jamil",
                  style: GoogleFonts.roboto(
                      fontSize: 25, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Selasa, 13 September 2022",
                  style: GoogleFonts.roboto(
                      fontSize: 17, fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AbsenMasukPage(),
                          ),
                        ),
                        child: Card(
                          elevation: 2,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            width: size.width * 0.75,
                            height: size.height * 0.34,
                            child: Column(
                              children: [
                                Container(
                                  height: 220,
                                  width: 170,
                                  child: Image.asset(
                                    "assets/images/imgmasuk.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  "Absen Masuk",
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AbsenPulangPage(),
                          ),
                        ),
                        child: Card(
                          elevation: 2,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            width: size.width * 0.75,
                            height: size.height * 0.34,
                            child: Column(
                              children: [
                                Container(
                                  height: 220,
                                  width: 170,
                                  child: Image.asset(
                                    "assets/images/imgpulang.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  "Absen Pulang",
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400, fontSize: 18),
                                )
                              ],
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
        ),
      ),
    );
  }
}
