import 'package:flutter/material.dart';

class DrawerComponents extends StatelessWidget {
  const DrawerComponents({Key? key}) : super(key: key);

  Widget _createItem(IconData icon, String label){
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        label,
        style: const TextStyle(
         fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: (){},
    );
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 96,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).colorScheme.primary,
            alignment: Alignment.bottomCenter,
            child: const Text(
                'MyMeals',
              style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 20),
          _createItem(Icons.restaurant, 'Meals'),
          _createItem(Icons.settings, 'Settings'),
        ],
      ),
    );
  }
}