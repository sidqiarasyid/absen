import 'package:absen/change_password.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: size.height * 0.02, bottom: size.height * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_rounded,
                        size: 28,
                      ),
                      splashRadius: 30,
                      alignment: Alignment.centerLeft,
                    ),
                    Text(
                      "Profile",
                      style: GoogleFonts.roboto(
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: size.width,
                height: size.height * 0.45,
                // color: Colors.black,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: size.width,
                      height: size.height * 0.4,
                      margin: EdgeInsets.only(top: size.height * 0.07),
                      decoration:
                          BoxDecoration(color: Colors.white, boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          offset: Offset(0.0, 3.0),
                          blurRadius: 5,
                        )
                      ]),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 50,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "M. Gavin Arasyi",
                          style: GoogleFonts.roboto(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Divider(
                          color: Colors.black,
                          thickness: 1,
                          endIndent: 50,
                          indent: 50,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          width: size.width,
                          margin: EdgeInsets.symmetric(horizontal: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _information("Kelas", "XII RPL 2"),
                              SizedBox(
                                height: 25,
                              ),
                              _information("No Telp", "08123456789"),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
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
                        builder: (context) => ChangePassword(),
                      ),
                    );
                  },
                  child: Text(
                    "Ganti Password",
                    style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _information(String title, String desc) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.roboto(
            fontSize: 18,
          ),
        ),
        Text(
          desc,
          style: GoogleFonts.roboto(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
