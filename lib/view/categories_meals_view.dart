import 'package:flutter/material.dart';

class CategoriesMealsView extends StatelessWidget {
  const CategoriesMealsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Receitas'),
      ),
      body: Center(child: const Text("Receitas por categoria")),
    );
  }
}
