import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BelahKetupatController extends GetxController{
  int d1 =0;
  int d2 = 0;
  int sisi = 0;
  final hasil = "".obs;
  final textColor = Rx<Color>(Colors.black);

  void hitungLuas(){
    double hitung = 0.5 * d1 * d2;
    hasil.value = "Hasil Perhitungan luas dari 0.5 x $d1 x $d2 = $hitung";
    textColor.value = Colors.blue;
  }

  void hitungKeliling(){
    int hitung = 4 * sisi;
    hasil.value = "Hasil Perhitungan Keliling dari 2 * $sisi =$hitung";
    textColor.value = Colors.yellow;
  }
}