import 'package:flutter/material.dart';

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
          DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/discount1.png',),
              ),
            ),
          ),
          Column(
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
                    const Text('3lb / 1 Pack'),
                    Row(
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.add)),
                        Text('1'),
                        IconButton(onPressed: (){}, icon: Icon(Icons.remove)),

                      ],
                    ),
                    RichText(text: TextSpan(
                      text: 'total',
                      children: [
                        
                      ]
                    ))
                    
            ],
          )
        ],
        
      ),
    );
  }
}