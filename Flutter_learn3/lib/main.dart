import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(
                  "images/riuu.jpg",
                ),
              ),
              Text("Lee Riwoo",
                  style: GoogleFonts.cinzel(
                    fontSize: 40,
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                  )
                ),
              Text("GAME DEVELOPER",
                  style:GoogleFonts.sourceSans3(
                    fontSize: 19,
                    color: Colors.blueGrey.shade100,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.7,
                  ),
                ),
              SizedBox(
                height: 40,
                width: 250,
                child: Divider(
                  color:Colors.white70,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white54,
                  borderRadius: BorderRadius.circular(7),
                ),
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 50,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.black54,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "087654321987",
                      style: GoogleFonts.sourceSans3(
                        fontSize: 19),
                    ),
                  ],
                )
            ),
            Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white54,
                  borderRadius: BorderRadius.circular(7),
                ),
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 50,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.email,
                      color: Colors.black54,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "leeriuu@gmail.com",
                      style: GoogleFonts.sourceSans3(
                        fontSize: 19),
                    ),
                  ],
                )
            )],
          ),
        ),
      ),
    );
  }
}

