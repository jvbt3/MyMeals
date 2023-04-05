import 'package:flutter/material.dart';
import 'package:mymeals/components/meal_components.dart';

import '../models/meal.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView(this.favoriteMeal, {Key? key}) : super(key: key);

  final List<Meal> favoriteMeal;


  @override
  Widget build(BuildContext context) {

    if(favoriteMeal.isEmpty){
      return Scaffold(
        appBar: AppBar(
          title: const Text('Favorites'),
        ),
        body: Center(
          child: Text('Ops! Nothing here.',
          style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      );
    }else{
      return ListView.builder(
          itemCount: favoriteMeal.length,
          itemBuilder: (ctx, index) {
            return MealComponents(favoriteMeal[index]);
          },
      );
    }
  }
}
