import 'package:flutter/material.dart';
import 'package:sushi_shop/models/food.dart';

class Shop extends ChangeNotifier {
  final List<Food> _foodMenu = [
    Food(
      name: "Salmon Sushi",
      price: "45",
      imagePath: "lib/images/sushi2.jpg",
      rating: "9.8",
    ),
    Food(
      name: "Tuna Sushi",
      price: "35",
      imagePath: "lib/images/sushi1.jpg",
      rating: "8.8",
    ),
  ];
  List<Food> _cart = [];

  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  void addToCart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  void removeFromCart(Food food) {
    _cart.remove(food);
    notifyListeners();
  }
}
