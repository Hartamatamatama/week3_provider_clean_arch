import 'package:flutter/material.dart';
import '../../../../core/routes/app_router.dart';
import '../../domain/entities/product.dart';
import '../widgets/add_button_widget.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});
  static final List<Product> _products = [
    const Product(id: '1', name: 'Nasi Goreng', price: 15000),
    const Product(id: '2', name: 'Sate Ayam', price: 20000),
    const Product(id: '3', name: 'Es Teh', price: 5000),
  ];