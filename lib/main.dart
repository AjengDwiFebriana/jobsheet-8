import 'package:flutter/material.dart';

Widget buatKotak(Color warna, double ukuran, {String? teks}) {
  return Container(
    decoration: BoxDecoration(
      color: warna,
      borderRadius: BorderRadius.circular(10),
    ),
    height: ukuran,
    width: ukuran,
    margin: EdgeInsets.all(5),
    child: teks != null
        ? Center(
            child: Text(
              teks,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          )
        : null,
  );
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Container(
          child: Text(
            'Flutter Custom Box',
            style: TextStyle(
              color: Color.fromARGB(255, 161, 80, 0),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.grey[200],
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Baris pertama (1 kotak di tengah)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buatKotak(Color.fromARGB(255, 169, 67, 200), 50),
                  ],
                ),
                // Baris kedua (2 kotak, ada spasi di antara)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buatKotak(Color.fromARGB(255, 0, 164, 173), 50),
                    SizedBox(width: 60), // Spasi kosong
                    buatKotak(Color.fromARGB(255, 0, 164, 173), 50),
                  ],
                ),
                // Baris ketiga (3 kotak dengan teks "Afif Galih" memenuhi 3 kotak)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buatKotak(Color.fromARGB(255, 7, 252, 252), 50,
                        teks: 'Ajeng'),
                    buatKotak(Color.fromARGB(255, 5, 255, 30), 50, teks: 'Dwi'),
                    buatKotak(Color.fromARGB(255, 7, 252, 252), 50,
                        teks: 'Febriana')
                  ],
                ),
                // Baris keempat (2 kotak, ada spasi di antara)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buatKotak(Color.fromARGB(255, 160, 32, 167), 50),
                    SizedBox(width: 60), // Spasi kosong
                    buatKotak(Color.fromARGB(255, 89, 40, 116), 50),
                  ],
                ),
                // Baris kelima (2 kotak, ada spasi di antara)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buatKotak(Color.fromARGB(255, 85, 113, 51), 50),
                    SizedBox(width: 60), // Spasi kosong
                    buatKotak(Color.fromARGB(255, 202, 29, 139), 50),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  ));
}
