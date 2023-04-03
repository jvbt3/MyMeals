import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../utils/routes.dart';

class MealDetailComponents extends StatelessWidget {
  final Meal meal;

  const MealDetailComponents(this.meal, {super.key});

   textTitle(){
     Text('Detail of ${meal.title}');
   }

  @override
  Widget build(BuildContext context) {
    return textTitle();
  }
}