import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cart_model.dart';
import 'catalog_page.dart';
import 'cart_page.dart';

void main() {
  runApp(
    // Membungkus aplikasi dengan ChangeNotifierProvider
    // agar State (CartModel) bisa diakses di mana saja [cite: 1041]
    ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: const MyApp(),
    ),
  );
}

// 2. UI LAYER [cite: 1085]
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        // Rute untuk halaman utama (Katalog) [cite: 1108]
        '/': (context) => const MyCatalog(),
        // Rute untuk halaman Keranjang [cite: 1108]
        '/cart': (context) => const MyCart(),
      },
    );
  }
}
