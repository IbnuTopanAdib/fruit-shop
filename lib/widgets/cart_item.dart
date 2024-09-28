import 'package:flutter/material.dart';
import 'package:fruit_shop/const/palette.dart';
import 'package:fruit_shop/widgets/cart_item_fraction.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/discount1.png',
                  ),
                ),
              ),
            ),
          ),
          const Expanded(child: CartItemFraction()),
          Checkbox(
            value: true,
            onChanged: (value) {},
            activeColor: Palette.primary,
          )
        ],
      ),
    );
  }
}
