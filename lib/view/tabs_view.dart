import 'package:flutter/material.dart';
import 'package:mymeals/view/categories_view.dart';
import '../models/meal.dart';
import 'favoreiteView.dart';

class TabsView extends StatefulWidget {
  const TabsView(this.favoriteMeal, {Key? key}) : super(key: key);

  final List<Meal> favoriteMeal;

  @override
  State<TabsView> createState() => _TabsViewState();
}

class _TabsViewState extends State<TabsView> {

 int _selectedScreenView = 0;

 late List<Map<String, Object>> _screens;

 void initState(){
   super.initState();
   _screens = [
     {'title': 'Categories List', 'screen': const CategoriesView()},
     {'title': 'Favorites List', 'screen':  FavoritesView(widget.favoriteMeal)},
   ];
 }

 _selectedScreen(int index){
   setState(() {
     _selectedScreenView = index;
   });
 }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedScreenView]['screen'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectedScreen,
        unselectedItemColor: Colors.grey[2],
        selectedItemColor: Colors.pink,
        currentIndex: _selectedScreenView,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}
