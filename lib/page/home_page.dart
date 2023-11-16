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
              Expanded(child: CustomMenu(imageAsset: "assets/persegi.JPG",title:"Persegi")),
              Expanded(child: CustomMenu(imageAsset: "assets/persegi.JPG",title:"Persegi")),
              Expanded(child: CustomMenu(imageAsset: "assets/persegi.JPG",title:"Persegi")),
            ],
          ),
          Row(
            children: [
              Expanded(child: CustomMenu(imageAsset: "assets/segitiga.png",title:"Segitiga")),
              Expanded(child: CustomMenu(imageAsset: "assets/segitiga.png",title:"Segitiga")),
              Expanded(child: CustomMenu(imageAsset: "assets/segitiga.png",title:"Segitiga")),
            ],
          )          ,
          Row(
            children: [
              Expanded(child: CustomMenu(imageAsset: "assets/lingkaran.png",title:"Segitiga")),
              Expanded(child: CustomMenu(imageAsset: "assets/lingkaran.png",title:"Segitiga")),
              Expanded(child: CustomMenu(imageAsset: "assets/lingkaran.png",title:"Segitiga")),
            ],
          ),
          Row(
            children: [
              Expanded(child: CustomMenu(imageAsset: "assets/kotak.JPG",title:"Segitiga")),
              Expanded(child: CustomMenu(imageAsset: "assets/kotak.JPG",title:"Segitiga")),
              Expanded(child: CustomMenu(imageAsset: "assets/kotak.JPG",title:"Segitiga")),
            ],
          )
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key, required this.imageAsset, required this.title,
  });

  final String imageAsset;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2,vertical: 5),
        color:  Colors.red.shade300,
        padding:  EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            Image.asset(imageAsset, height: 100),
            Text(title, style: TextStyle(color: Colors.yellow),),
          ],
        ));
  }
}
