import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Persegicontroller extends GetxController{
  int sisi =0;
  final hasil = "".obs;
  final textColor = Rx<Color>(Colors.black);

  void hitungLuas(){
    int hitung = sisi * sisi;
    hasil.value = "Hasil Perhitungan luas dari $sisi x $sisi = $hitung";
    textColor.value = Colors.blue;
  }

  void hitungKeliling(){
    int hitung = sisi + sisi + sisi + sisi;
    hasil.value = "Hasil Perhitungan Keliling dari $sisi + $sisi + $sisi + $sisi =$hitung";
    textColor.value = Colors.yellow;
  }
}