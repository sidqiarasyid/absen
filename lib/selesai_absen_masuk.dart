import 'package:absen/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelesaiMasukPage extends StatefulWidget {
  const SelesaiMasukPage({Key? key}) : super(key: key);

  @override
  State<SelesaiMasukPage> createState() => _SelesaiMasukPageState();
}

class _SelesaiMasukPageState extends State<SelesaiMasukPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 60),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Konfirmasi absen masuk hari ini",
              style:
                  GoogleFonts.roboto(fontWeight: FontWeight.w300, fontSize: 18),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "9 September",
              style:
                  GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 18),
            ),
            SizedBox(
              height: 8,
            ),
            Text("06:10 WIB",
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w300, fontSize: 48)),
            SizedBox(height: 35,),
            Container(color: Colors.grey, width: 280, height: 400,),
            SizedBox(height: 25,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Notes (Optional)",
                    labelStyle: GoogleFonts.roboto(
                        fontWeight: FontWeight.w300, fontSize: 14),
                ),
              ),
            ),
            SizedBox(height: 40,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.clear, size: 40,)),
                IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardPage(),));
                }, icon: Icon(Icons.check, size: 40,))
              ],),
            )

          ],
        ),
      ),
    ));
  }
}
