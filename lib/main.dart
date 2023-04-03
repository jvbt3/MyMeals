// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:mymeals/view/categories_meals_view.dart';
import 'package:mymeals/view/category_view.dart';
import 'utils/routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.pink,
          ).copyWith(
            secondary: Colors.amber,
          ),
          canvasColor:const Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Relaway'
      ),
      home: const CategoriesView(),
      routes: {
        Routes.home: (context) => const CategoriesView(),
        Routes.categoriesmelsview: (context) => CategoriesMealsView(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('myMeals'),
      ),
      body: const Center(
        child: Text('Navegar é preciso!!'),
      ),
    );
  }
}
