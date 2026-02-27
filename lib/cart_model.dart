import 'package:flutter/material.dart';

// Class ini adalah Single Source of Truth untuk data keranjang kita
class CartModel extends ChangeNotifier {
  // Variabel private untuk menyimpan daftar makanan
  final List<String> _items = [];

  // Getter agar data bisa dibaca dari luar (read-only)
  List<String> get items => _items;

  // Fungsi untuk menambah makanan ke keranjang
  void add(String itemName) {
    _items.add(itemName);
    // KUNCI PENTING: Memberitahu UI untuk update/rebuild!
    notifyListeners();
  }

  // Fungsi untuk mengosongkan keranjang
  void removeAll() {
    _items.clear();
    // Selalu panggil notifyListeners setiap ada perubahan data
    notifyListeners();
  }
}
