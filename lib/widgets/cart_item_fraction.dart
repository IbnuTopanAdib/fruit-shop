import 'package:flutter/material.dart';

class CartItemFraction extends StatelessWidget {
  const CartItemFraction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Mango Arumanis',
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(fontWeight: FontWeight.bold),
          textAlign: TextAlign.left,
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('3lb / 1 Pack'),
            RichText(
                text: TextSpan(
                    text: 'price: ',
                    style: Theme.of(context).textTheme.bodyMedium,
                    children: [
                  TextSpan(
                      text: '\$32',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(fontWeight: FontWeight.bold))
                ]))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('quantity', style: Theme.of(context).textTheme.bodyMedium),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                    )),
                Text('1'),
                IconButton(onPressed: () {}, icon: Icon(Icons.remove)),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Total:',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text('\$32',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontWeight: FontWeight.bold))
          ],
        )
      ],
    );
  }
}
