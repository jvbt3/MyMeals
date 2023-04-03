import 'package:flutter/material.dart';

import '../models/meal.dart';

class MealDetailView extends StatelessWidget {
  const MealDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final meal = ModalRoute.of(context)?.settings.arguments as Meal;

    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: const Text('Meal Detail'),
    );
  }
}
