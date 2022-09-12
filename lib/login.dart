import 'package:absen/dashboard.dart';
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
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                "Absen Guru RPL \n SMK RUS",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                    fontSize: 32, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                height: 180,
                child: Image.asset(
                  "assets/images/logorus.png",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 35),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Nomor induk yayasan",
                      labelStyle: GoogleFonts.roboto(
                          fontWeight: FontWeight.w300, fontSize: 14),
                      prefixIcon: Icon(
                        Icons.person_outline,
                        color: Colors.black,
                      )),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 35),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: GoogleFonts.roboto(
                          fontWeight: FontWeight.w300, fontSize: 14),
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: Colors.black,
                      )),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                  width: 310,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DashboardPage(),
                          ));
                    },
                    child: Text("Login"),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16))),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
