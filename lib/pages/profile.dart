import 'package:absen/pages/change_password.dart';
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

    showAlertDialog(BuildContext context) {
      // set up the button
      Widget cancelButton = TextButton(
        child: Text("Tidak"),
        onPressed: () {
          Navigator.pop(context);
        },
      );
      Widget okButton = TextButton(
        child: Text("Logout"),
        onPressed: () {

        },
      );

      // set up the AlertDialog
      AlertDialog alert = AlertDialog(
        content: Text("Apakah anda yakin ingin logout"),
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
                      "Profile",
                      style: GoogleFonts.roboto(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: size.width,
                height: size.height * 0.40,
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
                          child: Image.asset(
                            "assets/images/profilelogo.png",
                            fit: BoxFit.cover,
                          ),
                          radius: 50,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Abdul Jamil, S.Pd., M.Pd",
                          style: GoogleFonts.roboto(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 5,
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
                              _information("Nomor Induk Yayasan", "094123940"),
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
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.025,
              ),
              Container(
                width: size.width,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    showAlertDialog(context);
                  },
                  child: Text(
                    "Log Out",
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
              ),
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
            fontWeight: FontWeight.w300
          ),
        ),
        SizedBox(height: 5,),
        Text(
          desc,
          style: GoogleFonts.roboto(
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
