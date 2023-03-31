import 'package:flutter/material.dart';

class Category {
  final String name;
  final List<Product>? products;
  const Category({
    required this.name,
    this.products,
  });
}

class Product {
  final String name;
  final String image;
  final String price;
  final bool isSelected;
  final Color color;

  const Product({
    required this.name,
    required this.price,
    required this.image,
    required this.color,
    required this.isSelected,
  });
}

final data = [
  Category(
    name: "All",
    products: [
      Product(
        name: "Jordan Air",
        price: "55.60",
        image: "assets/image/product1.png",
        isSelected: true,
        color: Colors.red.shade50,
      ),
      Product(
        name: "Watchs",
        price: "40.5",
        image: "assets/image/product2.png",
        isSelected: false,
        color: Colors.yellow.shade50,
      ),
      Product(
        name: "Jordan",
        price: "8.99",
        image: "assets/image/product3.png",
        isSelected: false,
        color: Colors.lightGreen.shade50,
      ),
      Product(
        name: "Nau",
        price: "6.20",
        image: "assets/image/product4.png",
        isSelected: true,
        color: Colors.purple.shade50,
      ),
      Product(
        name: "Nau",
        price: "6.20",
        image: "assets/image/product4.png",
        isSelected: true,
        color: Colors.purple.shade50,
      ),
    ],
  ),
  const Category(name: "Shoes"),
  const Category(name: "T-shirt"),
  const Category(name: "Watchs"),
  const Category(name: "tech"),
];
