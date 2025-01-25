import 'package:flutter/material.dart';
import 'package:friut_app/core/widgets/fruit_item.dart';

class BestSellingGridView extends StatelessWidget {
  const BestSellingGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 16,
            mainAxisSpacing: 8,
            crossAxisCount: 2,
            childAspectRatio: 170 / 230),
        itemCount: 8,
        itemBuilder: (context, index) {
          return FruitItem();
        });
  }
}
