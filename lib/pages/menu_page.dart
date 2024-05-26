import 'package:flutter/material.dart';
import 'package:vioscake_admin/models/card_product.dart';
import 'package:vioscake_admin/models/product.dart';
import 'package:vioscake_admin/pages/keranjang_page.dart';

class MenuPage extends StatelessWidget {
  final Function(Product) onAddToCart;

  const MenuPage({Key? key, required this.onAddToCart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Menu',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductCard(
            product: products[index],
            onAddToCart: () => onAddToCart(products[index]),
          );
        },
      ),
    );
  }
}
