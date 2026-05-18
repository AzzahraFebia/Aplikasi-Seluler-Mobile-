// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations

import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String nama, gender, kategori;
  final double bmi;

  const ResultPage(
      {required this.nama,
      required this.bmi,
      required this.gender,
      required this.kategori,
      super.key});

  String _getKategori() {
    if (bmi < 18.5) return 'Kurus';
    if (bmi < 25.0) return 'Normal';
    if (bmi < 30.0) return 'Gemuk';
    return "Obesitas";
  }

  Color _getKategoriWarna() {
    if (bmi < 18.5) return const Color.fromARGB(255, 11, 71, 121);
    if (bmi < 25.0) return const Color.fromARGB(255, 24, 128, 27);
    if (bmi < 30.0) return const Color.fromARGB(255, 182, 113, 11);
    return const Color.fromARGB(255, 185, 13, 13);
  }

  String _getPesan() {
    if (bmi < 18.5) {
      return '🥗 Jangan lupa perhatikan asupan nutrisi harian ya!';
    }
    if (bmi < 25.0) {
      return '💪 Keren! BMI kamu normal, pertahankan pola hidup sehat ya!';
    }
    if (bmi < 30.0) {
      return '🏃 Pelan-pelan mulai rutin olahraga dan jaga pola makan ya!';
    }
    return "❤️ Semangat terus jaga kesehatan dan pola hidup sehat!";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hasil BMI"),
        leading: BackButton(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 90),

            // Nama User
            Column(
              children: [
                Text(
                  "Hai, $nama!",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Berikut hasil BMI kamu",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),

            // Nilai BMI
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 6, 70, 122),
                  width: 1.5,
                ),
                borderRadius: BorderRadius.circular(12),
                color: const Color.fromARGB(101, 14, 91, 233),
              ),
              child: Text(
                "${bmi.toStringAsFixed(1)}",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // Status Kategori BMI
            SizedBox(height: 30),
            Text.rich(
              TextSpan(
                text: "Status: ",
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: _getKategori(),
                    style: TextStyle(
                      fontSize: 23,
                      color: _getKategoriWarna(),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

          // Pesan tambahan berdasarkan kategori
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color.fromARGB(62, 36, 211, 255),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: const Color.fromARGB(255, 92, 169, 248),
                  width: 1.5,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "💡 ",
                    style: TextStyle(fontSize: 22),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      _getPesan(),
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 53, 92, 125),
                        height: 1.4,
                      ),
                    ),
                  ),
                ],
              )
            ),

            // Tombol Hitung Ulang
            GestureDetector(
              onTap: () {
                Navigator.pop(
                  context,
                );
              },
              child: Container(
                margin: EdgeInsets.only(top: 50, left: 24, right: 24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color.fromARGB(255, 92, 169, 248),
                ),
                width: double.infinity,
                height: 50,
                child: Center(
                  child: Text(
                    "Hitung Ulang",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
