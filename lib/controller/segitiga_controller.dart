import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Segitigacontroller extends GetxController{
  int alas =0;
  int tinggi =0;
  int sisi = 0;
  final hasil = "".obs;
  final textColor = Rx<Color>(Colors.black);

  void hitungLuas(){
    double hitung = 0.5 * alas * tinggi;
    hasil.value = "Hasil Perhitungan luas dari 0.5 * $alas * $tinggi = $hitung";
    textColor.value = Colors.blue;
  }

  void hitungKeliling(){
    int hitung = sisi + sisi + sisi;
    hasil.value = "Hasil Perhitungan Keliling dari $sisi + $sisi + $sisi  = $hitung ";
    textColor.value = Colors.yellow;
  }
}