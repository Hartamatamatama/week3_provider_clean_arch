import 'package:flutter/material.dart';
import 'core/routes/app_router.dart';
import 'injection.dart';

void main() => runApp(buildApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Menggunakan konstanta route dari AppRouter di Core Layer
      initialRoute: AppRouter.catalog,
      routes: AppRouter.routes,
    );
  }
}
