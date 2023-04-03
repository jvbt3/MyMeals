import 'package:flutter/material.dart';

import '../model/category.dart';

class CategoriesMealsView extends StatelessWidget {
  const CategoriesMealsView({super.key});



  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)?.settings.arguments as Category;
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
