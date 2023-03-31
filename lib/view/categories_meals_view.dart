import 'package:flutter/material.dart';

import '../model/category.dart';

class CategoriesMealsView extends StatelessWidget {

  final Category category;

  const CategoriesMealsView(this.category);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(category.title),
      ),
      body: Center(
          child: Text(
              "Receitas por categoria ${category.id}",
          ),
      ),
    );
  }
}
////////////
