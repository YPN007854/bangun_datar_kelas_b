import 'package:bangun_datar_kelas_b/page/belahketupat_page.dart';
import 'package:bangun_datar_kelas_b/page/persegi_page.dart';
import 'package:bangun_datar_kelas_b/page/persegipanjang_page.dart';
import 'package:bangun_datar_kelas_b/page/segitiga_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page", style: TextStyle(color: Colors.red)),
        backgroundColor: Color(0xFF0B44FF),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Expanded(
                  child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>PersegiPage()));
                      },
                      child: CustomMenu(
                          imageAsset: "assets/persegi.JPG", title: "Persegi"))),
              Expanded(
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>SegitigaPage()));
                    },
                    child: CustomMenu(
                        imageAsset: "assets/segitiga.png", title: "Segitiga Sama Sisi"),
                  )),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>PersegiPanjangPage()));
                      },
                      child: CustomMenu(
                          imageAsset: "assets/kotak.JPG", title: "Persegi Panjang"))),
              Expanded(
                  child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>BelahKetupatPage()));
                      },
                      child: CustomMenu(
                          imageAsset: "assets/belahketupat.png", title: "Belah Ketupat"))),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key,
    required this.imageAsset,
    required this.title,
  });

  final String imageAsset;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 2, vertical: 5),
        color: Colors.red.shade300,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            Image.asset(imageAsset, height: 100),
            Text(
              title,
              style: TextStyle(color: Colors.yellow),
            ),
          ],
        ));
  }
}
