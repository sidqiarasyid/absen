import 'package:absen/pages/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: size.width,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height * 0.1,
                ),
                Text(
                  "Absensi Guru\nSMK RUS",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                      fontSize: 32, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Container(
                  height: size.height / 4.5,
                  child: Image.asset(
                    "assets/images/logorus.png",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.08,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    labelText: "Nomor induk yayasan",
                    labelStyle: GoogleFonts.roboto(
                        fontWeight: FontWeight.w300, fontSize: 14),
                    prefixIcon: Icon(
                      Icons.person_outline,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    labelText: "Password",
                    labelStyle: GoogleFonts.roboto(
                        fontWeight: FontWeight.w300, fontSize: 14),
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                Container(
                  width: size.width,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DashboardPage(),
                        ),
                      );
                    },
                    child: Text(
                      "Login",
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
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
