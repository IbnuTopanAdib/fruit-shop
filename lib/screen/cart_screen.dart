import 'package:flutter/material.dart';
import 'package:fruit_shop/const/palette.dart';
import 'package:fruit_shop/widgets/cart_item.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return const CartItem();
            },
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (value) {},
                    activeColor: Palette.primary,
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  const Text(
                    'Semua',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Text(
                'Total: Rp. 200',
                style:
                    const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        )
      ],
    );
  }
}
