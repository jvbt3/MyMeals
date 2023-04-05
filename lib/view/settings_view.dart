import 'package:flutter/material.dart';
import '../components/drawer_components.dart';
import '../models/settings.dart';

class SettingsApp extends StatefulWidget {
  const SettingsApp(this.onSettingsChanged, this.settings, {Key? key}) : super(key: key);

  final Function(Settings) onSettingsChanged;

  final Settings settings;

  @override
  State<SettingsApp> createState() => _SettingsAppState();
}

class _SettingsAppState extends State<SettingsApp> {

  late Settings settings;

  @override
  void initState() {
    settings = widget.settings;
    super.initState();
  }

  Widget _createSwich(
      String title, bool value, Function(bool) onChanged) {
    return SwitchListTile.adaptive(
      activeColor: Colors.pink,
      value: value,
      onChanged: (value) {
        onChanged(value);
        widget.onSettingsChanged(settings);
      },
      title: Text(title),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
        ),
        drawer: const DrawerComponents(),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: Text(
                'Settings',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  _createSwich(
                    'Gluten-Free',
                    settings.isGlutenFree,
                    (value) => setState(() => settings.isGlutenFree = value),
                  ),
                  _createSwich(
                    'Lactose-free',
                    settings.isLactoseFree,
                    (value) => setState(() => settings.isLactoseFree = value),
                  ),
                  _createSwich(
                    'Vegan',
                    settings.isVeganFree,
                    (value) => setState(() => settings.isVeganFree = value),
                  ),
                  _createSwich(
                    'Vegetarian',
                     settings.isVegetarianFree,
                     (value) => setState(() => settings.isVegetarianFree = value),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
