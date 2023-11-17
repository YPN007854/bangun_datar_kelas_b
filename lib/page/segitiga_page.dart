import 'package:bangun_datar_kelas_b/controller/segitiga_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SegitigaPage extends StatelessWidget {
  SegitigaPage({super.key});
  final Segitigacontroller _segitigacontroller= Get.put(Segitigacontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segitiga Sama Sisi page"),
      ),
      body: Column(
        children: [
          Image.asset("assets/segitiga.png", height: 100),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              "Segitiga",
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
                "Segitiga adalah bangun datar geometri yang mempunyai tiga sisi berupa garis lurus dengan tiga sudut. Segitiga memiliki "
                    "beberapa macam bentuk, yaitu segitiga sama kaki, segitiga sama sisi, segitiga siku-siku, segitiga sembarang, segitiga tumpul, dan segitiga lancip."),
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
                      _segitigacontroller.alas = int.parse(value);
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "Alas",
                        hintText: "Masukkan Alas",
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
                      _segitigacontroller.tinggi = int.parse(value);
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "Tinggi",
                        hintText: "Masukkan tinggi",
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
                ),Container(
                  child: TextFormField(
                    onChanged: (value){
                      _segitigacontroller.sisi = int.parse(value);
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "Sisi",
                        hintText: "Masukkan Sisi",
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
                        _segitigacontroller.hitungLuas();
                      }, child: Text("Hitung Luas",style: TextStyle(color: Colors.yellow)),style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.blue))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(onPressed: (){
                        _segitigacontroller.hitungKeliling();
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
                Obx(() => Text(_segitigacontroller.hasil.value, style: TextStyle(color: _segitigacontroller.textColor.value),))             ],
            ),
          )
        ],
      ),
    );
  }
}