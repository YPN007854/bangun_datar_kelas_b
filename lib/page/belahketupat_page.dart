import 'package:bangun_datar_kelas_b/controller/belahketupat_controller.dart';
import 'package:bangun_datar_kelas_b/controller/persegipanjang_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BelahKetupatPage extends StatelessWidget {
  BelahKetupatPage({super.key});
  final BelahKetupatController _belahKetupatController= Get.put(BelahKetupatController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belah Ketupat Page"),
      ),
      body: Column(
        children: [
          Image.asset("assets/belahketupat.png", height: 100),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              "Belah Ketupat Page",
              style: TextStyle(color: Colors.yellow),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.green.shade300,borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
            child: Text(
                "Belah ketupat adalah bangun datar dua dimensi yang dibentuk oleh empat rusuk yang sama panjang, "
                    "dan memiliki dua pasang sudut bukan siku-siku yang masing-masing sama besar dengan sudut dihadapannya. "
                    "2. Ada tiga unsur yang membentuk daerah belah ketupat. Yaitu: sisi, sudut, dan titik sudut."),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.green.shade200,borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  child: TextFormField(
                    onChanged: (value){
                      _belahKetupatController.d1 = int.parse(value);
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "d1",
                        hintText: "Masukkan d1",
                        hintStyle: TextStyle(color: Colors.grey.shade400),
                        contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.blue),
                            borderRadius: BorderRadius.all(Radius.circular(10)))),
                  ),
                ),
                Container(
                  child: TextFormField(
                    onChanged: (value){
                      _belahKetupatController.d2 = int.parse(value);
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "d2",
                        hintText: "Masukkan d2",
                        hintStyle: TextStyle(color: Colors.grey.shade400),
                        contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.blue),
                            borderRadius: BorderRadius.all(Radius.circular(10)))),
                  ),
                ),
                Container(
                  child: TextFormField(
                    onChanged: (value){
                      _belahKetupatController.sisi = int.parse(value);
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "sisi",
                        hintText: "Masukkan sisi",
                        hintStyle: TextStyle(color: Colors.grey.shade400),
                        contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.blue),
                            borderRadius: BorderRadius.all(Radius.circular(10)))),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(onPressed: (){
                        _belahKetupatController.hitungLuas();
                      }, child: Text("Hitung Luas",style: TextStyle(color: Colors.yellow)),style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.blue))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(onPressed: (){
                        _belahKetupatController.hitungKeliling();
                      }, child: Text("Hitung Keliling",style: TextStyle(color: Colors.blue)),style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow))),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.green.shade200,borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            height: 300,
            width: 600,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Obx(() => Text(_belahKetupatController.hasil.value, style: TextStyle(color: _belahKetupatController.textColor.value),))
              ],
            ),
          )
        ],
      ),
    );
  }
}