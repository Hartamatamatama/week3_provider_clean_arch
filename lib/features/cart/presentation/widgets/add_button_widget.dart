import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../domain/entities/product.dart';
import '../providers/cart_provider.dart';

class AddButtonWidget extends StatelessWidget {
  final Product product;
  const AddButtonWidget({required this.product, super.key});