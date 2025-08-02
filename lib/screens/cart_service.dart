// lib/services/cart_service.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class CartService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  String get userId => _auth.currentUser!.uid;

  CollectionReference get _cartRef =>
      _firestore.collection('users').doc(userId).collection('cart');

  CollectionReference get _ordersRef =>
      _firestore.collection('users').doc(userId).collection('orders');

  Future<void> addToCart(Map<String, dynamic> item) async {
    final doc = _cartRef.doc(item['id']);
    final snapshot = await doc.get();

    if (snapshot.exists) {
      await doc.update({
        'quantity': FieldValue.increment(1),
      });
    } else {
      await doc.set({
        ...item,
        'quantity': 1,
      });
    }
  }

  Future<void> removeFromCart(String itemId) async {
    final doc = _cartRef.doc(itemId);
    final snapshot = await doc.get();

    if (snapshot.exists) {
      final quantity = snapshot['quantity'];
      if (quantity > 1) {
        await doc.update({'quantity': FieldValue.increment(-1)});
      } else {
        await doc.delete();
      }
    }
  }

  Stream<QuerySnapshot> getCartItems() {
    return _cartRef.snapshots();
  }

  Future<void> placeOrder() async {
    final cartItems = await _cartRef.get();
    if (cartItems.docs.isEmpty) return;

    final total = cartItems.docs.fold<double>(
      0,
      (sum, doc) => sum + (doc['price'] * doc['quantity']),
    );

    await _ordersRef.add({
      'items': cartItems.docs.map((doc) => doc.data()).toList(),
      'total': total,
      'timestamp': FieldValue.serverTimestamp(),
    });

    // Clear the cart
    for (var doc in cartItems.docs) {
      await doc.reference.delete();
    }
  }
}
