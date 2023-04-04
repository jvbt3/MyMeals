import 'package:flutter/material.dart';
import 'package:mymeals/view/categories_view.dart';
import 'favoreiteView.dart';

class TabsView extends StatefulWidget {
  const TabsView({Key? key}) : super(key: key);

  @override
  State<TabsView> createState() => _TabsViewState();
}

class _TabsViewState extends State<TabsView> {

 int _selectedScreenView = 0;

 final List<Map<String, Object>> _screens = [
   {'title': 'Categories List', 'screen': const CategoriesView()},
   {'title': 'Favorites List', 'screen': const FavoritesView()},
 ];

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
