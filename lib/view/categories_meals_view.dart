import 'package:flutter/material.dart';
import 'package:mymeals/components/meal_components.dart';
import '../models/category.dart';
import '../data/dummy_data.dart';
import '../models/meal.dart';
import 'package:mymeals/data/dummy_data.dart';

class CategoriesMealsScreen extends StatelessWidget {
  const CategoriesMealsScreen(this.meals, {Key? key}) : super(key: key);

  final List<Meal> meals;


  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)!.settings.arguments as Category;

    final categoryMeals = meals.where((meal) {
      return meal.categories.contains(category.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (ctx, index) {
          return MealComponents(categoryMeals[index]);
        },
      ),
    );
  }
}
