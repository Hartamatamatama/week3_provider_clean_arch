import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../domain/entities/product.dart';
import '../providers/cart_provider.dart';

class AddButtonWidget extends StatelessWidget {
  final Product product;
  const AddButtonWidget({required this.product, super.key});
  
  @override
  Widget build(BuildContext context) {
    // Mengecek dari provider apakah produk dengan id ini ada di keranjang
    final isInCart = context.select<CartProvider, bool>(
      (provider) => provider.isInCart(product.id),
    );