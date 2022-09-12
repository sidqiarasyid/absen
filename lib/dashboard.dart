import 'package:absen/absen_masuk.dart';
import 'package:absen/absen_pulang.dart';
import 'package:absen/profile.dart';
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
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Absen", style: GoogleFonts.roboto(fontWeight: FontWeight.w500, fontSize: 18),),
                IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
                }, icon: Icon(Icons.person))
              ],
            ),
          ),
          SizedBox(height: 65,),
          Container(
              width: 340,
              height: 45,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AbsenMasukPage(),));
                },
                child: Text("Absen Masuk", ),
                style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.blue),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),)),
              )),
          SizedBox(height: 18,),
          Container(
              width: 340,
              height: 45,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AbsenPulangPage(),));
                },
                child: Text("Absen Pulang", ),
                style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.blue),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),)),
              )),
        ],
      ),
    ));
  }
}
