import 'dart:io';

import 'package:absen/pages/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelesaiPulangPage extends StatefulWidget {
  final String imagePath;

  const SelesaiPulangPage({Key? key, required this.imagePath})
      : super(key: key);

  @override
  State<SelesaiPulangPage> createState() => _SelesaiPulangPageState();
}

class _SelesaiPulangPageState extends State<SelesaiPulangPage> {
  showAlertDialog(BuildContext context) {
    // set up the button
    Widget cancelButton = TextButton(
      child: Text("Tidak"),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    Widget okButton = TextButton(
      child: Text("Kirim"),
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DashboardPage(),
            ));
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      content: Text("Apakah anda yakin ingin mengirim?"),
      actions: [cancelButton, okButton],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: size.width,
            height: size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height * 0.03,
                ),
                Text(
                  "Konfirmasi absen pulang hari ini",
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w300, fontSize: 18),
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                Text(
                  "9 September",
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400, fontSize: 18),
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                Text(
                  "17:58 WIB",
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w300, fontSize: 48),
                ),
                SizedBox(
                  height: size.height * 0.035,
                ),
                Container(
                  width: size.width * 0.75,
                  height: size.height * 0.48,
                  child: Image.file(
                    File(widget.imagePath),
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: size.width * 0.75,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Notes (Optional)",
                      labelStyle: GoogleFonts.roboto(
                          fontWeight: FontWeight.w300, fontSize: 14),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.red, shape: BoxShape.circle),
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.clear,
                                  size: 40,
                                  color: Colors.white,
                                )),
                            width: 55,
                            height: 55,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Ambil Ulang",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w300, fontSize: 16),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.green, shape: BoxShape.circle),
                            child: IconButton(
                              onPressed: () {
                                showAlertDialog(context);
                              },
                              icon: Icon(
                                Icons.check,
                                size: 40,
                                color: Colors.white,
                              ),
                            ),
                            width: 55,
                            height: 55,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Kirim Absen",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w300, fontSize: 16),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
