import 'package:flutter/material.dart';
import 'package:mymeals/models/settings.dart';
import 'package:mymeals/utils/routes.dart';
import 'package:mymeals/view/meals_details_view.dart';
import 'package:mymeals/view/not_found_view.dart';
import 'package:mymeals/view/settings_view.dart';
import 'package:mymeals/view/tabs_view.dart';
import 'data/dummy_data.dart';
import 'view/categories_meals_view.dart';
import 'models/meal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Settings settings = Settings();
  List<Meal> _availableMeals = dummyMeals;

  void _filterMeals(Settings settings) {
    setState(() {
      this.settings = settings;
      _availableMeals = dummyMeals.where((meal) {
        final filterGluten = settings.isGlutenFree && !meal.isGlutenFree;
        final filterLactose = settings.isLactoseFree && !meal.isLactoseFree;
        final filterVegan = settings.isVeganFree && !meal.isVegan;
        final filterVegetarian = settings.isVegetarianFree && !meal.isVegetarian;
      return !filterGluten && !filterVegan && !filterLactose && !filterVegetarian;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyMeals',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.pink,
          secondary: Colors.amber,
        ),
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              titleLarge: const TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
              ),
            ),
      ),
      routes: {
        AppRoutes.home: (ctx) => const TabsView(),
        AppRoutes.categoriesMeals: (ctx) =>
            CategoriesMealsScreen(_availableMeals),
        AppRoutes.mealDetails: (ctx) => const MealDetailView(),
        AppRoutes.settingsApp: (ctx) => SettingsApp(_filterMeals, settings),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (_) {
            return const NotFoundView();
          },
        );
      },
    );
  }
}
