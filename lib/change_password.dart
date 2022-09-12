import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
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
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.5),
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.black,
                    ),
                    prefixIconColor: Colors.black,
                    hintText: "Password baru",
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(height: size.height * 0.07,),
              Container(
                width: size.width,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Ganti",
                    style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  style: ButtonStyle(
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
}
