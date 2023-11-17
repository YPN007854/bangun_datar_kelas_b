import 'package:bangun_datar_kelas_b/controller/persegipanjang_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPanjangPage extends StatelessWidget {
  PersegiPanjangPage({super.key});
  final PersegiPanjangcontroller _persegiPanjangcontroller= Get.put(PersegiPanjangcontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Persegi panjang Page"),
      ),
      body: Column(
        children: [
          Image.asset("assets/kotak.JPG", height: 100),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              "Persegi Panjang Page",
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
                "Bangun datar persegi panjang adalah bangun datar dua dimensi yang terbentuk dari dua pasang "
                    "sisi yang sejajar dan sama panjang dengan setiap sudutnya membentuk sudut siku-siku."),
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
                      _persegiPanjangcontroller.panjang = int.parse(value);
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "Panjang",
                        hintText: "Masukkan Panjang",
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
                      _persegiPanjangcontroller.lebar = int.parse(value);
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "Lebar",
                        hintText: "Masukkan Lebar",
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
                        _persegiPanjangcontroller.hitungLuas();
                      }, child: Text("Hitung Luas",style: TextStyle(color: Colors.yellow)),style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.blue))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(onPressed: (){
                        _persegiPanjangcontroller.hitungKeliling();
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
                Obx(() => Text(_persegiPanjangcontroller.hasil.value, style: TextStyle(color: _persegiPanjangcontroller.textColor.value),))              ],
            ),
          )
        ],
      ),
    );
  }
}