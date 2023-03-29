import '../model/category.dart';
import 'package:flutter/material.dart';

class CategoryComponets extends StatelessWidget {
  final Category category;

  const CategoryComponets(this.category, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [
            category.color!.withOpacity(0.5),
            category.color!,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Text(category.title),
    );
  }
}
