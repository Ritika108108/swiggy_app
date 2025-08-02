// lib/screens/cart_page.dart
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../screens/cart_service.dart';

class CartPage extends StatelessWidget {
  final CartService _cartService = CartService();

  CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your Cart')),
      body: StreamBuilder<QuerySnapshot>(
        stream: _cartService.getCartItems(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return const Center(child: CircularProgressIndicator());

          final docs = snapshot.data!.docs;
          double total = 0;

          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: docs.length,
                  itemBuilder: (context, index) {
                    final item = docs[index];
                    total += item['price'] * item['quantity'];
                    return ListTile(
                      title: Text(item['name']),
                      subtitle: Text('₹${item['price']} x ${item['quantity']}'),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.remove),
                            onPressed: () => _cartService.removeFromCart(item.id),
                          ),
                          IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: () => _cartService.addToCart({
                              'id': item.id,
                              'name': item['name'],
                              'price': item['price'],
                              'image_url': item['image_url'],
                            }),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Text('Total: ₹${total.toStringAsFixed(2)}',
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () async {
                        await _cartService.placeOrder();
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Order placed successfully!')),
                        );
                      },
                      child: const Text('Place Order'),
                    ),
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
