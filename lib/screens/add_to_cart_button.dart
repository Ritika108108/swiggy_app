// lib/widgets/add_to_cart_button.dart
import 'package:flutter/material.dart';
import '../screens/cart_service.dart';

class AddToCartButton extends StatelessWidget {
  final Map<String, dynamic> item;
  final CartService _cartService = CartService();

  AddToCartButton({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () => _cartService.addToCart(item),
      icon: const Icon(Icons.shopping_cart),
      label: const Text('Add to Cart'),
    );
  }
}
