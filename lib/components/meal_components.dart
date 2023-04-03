import 'package:flutter/material.dart';

import '../models/meal.dart';

class MealComponents extends StatelessWidget {
  final Meal meal;

  const MealComponents(this.meal, {super.key});

  void _onSelectMeals() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _onSelectMeals,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 5,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  child: Image.network(
                    meal.imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    width: 300,
                    color: Colors.black54,
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    child: Text(
                      meal.title,
                      style: const TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(children: <Widget>[
                    const Icon(Icons.schedule),
                    SizedBox(width: 6),
                    Text('${meal.duration} min'),
                  ]),
                  Row(children: <Widget>[
                    const Icon(Icons.work),
                    SizedBox(width: 6),
                    Text(meal.complexityText),
                  ]),
                  Row(children: <Widget>[
                    const Icon(Icons.attach_money),
                    SizedBox(width: 6),
                    Text(meal.costText),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
