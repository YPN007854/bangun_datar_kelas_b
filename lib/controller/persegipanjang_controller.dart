import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPanjangcontroller extends GetxController{
  int panjang =0;
  int lebar = 0;
  final hasil = "".obs;
  final textColor = Rx<Color>(Colors.black);

  void hitungLuas(){
    int hitung = panjang * lebar;
    hasil.value = "Hasil Perhitungan luas dari $panjang x $lebar = $hitung";
    textColor.value = Colors.blue;
  }

  void hitungKeliling(){
    int hitung = 2 *(panjang + lebar);
    hasil.value = "Hasil Perhitungan Keliling dari 2 * ($panjang + $lebar) =$hitung";
    textColor.value = Colors.yellow;
  }
}