import '../model/category.dart';
import 'package:flutter/material.dart';
import 'package:mymeals/utils/routes.dart';

class CategoryComponets extends StatelessWidget {
  final Category category;

  const CategoryComponets(this.category, {super.key});

  _onSelected(BuildContext context) {
    Navigator.of(context).pushNamed(
        Routes.categoriesmelsview,
          arguments: category);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _onSelected(context),
      borderRadius: BorderRadius.circular(10),
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: [
              category.color!.withOpacity(0.5),
              category.color!,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Text(
          category.title,
          style: const TextStyle(fontSize: 15, fontFamily: 'Relaway-bold.ttf'),
        ),
      ),
    );
  }
}
