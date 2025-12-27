import 'package:flutter/material.dart';

import '../global_variable.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: ListView.builder(
        itemCount: cart.length,
          itemBuilder: (context, index) {
          final cartItem = cart[index];
          
          return ListTile(
            title: Text(
              cartItem['title'].toString(),
              style: Theme.of(context).textTheme.titleSmall,
            ),
            subtitle: Text('Size: ${cartItem['sizes']}'),
          );
        }
      ),
    );
  }
}
