import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      final imageWidth = constraint.maxWidth / 4;
      return Card(
        elevation: 0.1,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Text(
                'Item Name',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              Image.asset(
                width: imageWidth,
                'assets/images/banana.png',
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      );
    });
  }
}
