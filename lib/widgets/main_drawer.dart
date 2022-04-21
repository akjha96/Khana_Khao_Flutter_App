import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  Widget buildListTile(String title, IconData icon) => ListTile(
        leading: Icon(
          icon,
          size: 26,
        ),
        title: Text(
          title,
          style: TextStyle(
              fontFamily: 'RobotoCondensed',
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).colorScheme.secondary,
            child: Text('Cooking Up!',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Theme.of(context).colorScheme.primary,
                )),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTile(
            'Meals',
            Icons.restaurant,
          ),
          buildListTile(
            'Filters',
            Icons.settings,
          ),
        ],
      ),
    );
  }
}
