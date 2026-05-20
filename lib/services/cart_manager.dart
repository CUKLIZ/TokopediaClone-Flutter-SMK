import 'package:flutter/material.dart';
import '../models/cart_item.dart';
import '../models/product.dart';

class CartManager {
  static final CartManager _instance = CartManager._internal();
  factory CartManager() => _instance;
  CartManager._internal();

  final ValueNotifier<List<CartItem>> cartItems = ValueNotifier<List<CartItem>>([]);

  void addToCart(Product product) {
    final currentList = List<CartItem>.from(cartItems.value);
    final existingIndex = currentList.indexWhere((item) => item.product.name == product.name);

    if (existingIndex >= 0) {
      currentList[existingIndex].quantity += 1;
    } else {
      currentList.add(CartItem(product: product));
    }
    cartItems.value = currentList; 
  }

  void updateQuantity(Product product, int quantity) {
    final currentList = List<CartItem>.from(cartItems.value);
    final index = currentList.indexWhere((item) => item.product.name == product.name);

    if (index >= 0) {
      if (quantity <= 0) {
        currentList.removeAt(index);
      } else {
        currentList[index].quantity = quantity;
      }
      cartItems.value = currentList;
    }
  }

  // Menghitung total harga belanjaan
  double get totalPrice {
    return cartItems.value.fold(0, (sum, item) => sum + (item.product.price * item.quantity));
  }
}