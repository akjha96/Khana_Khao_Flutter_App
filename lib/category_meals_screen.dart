import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  const CategoryMealsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'the Recipes',
        ),
      ),
      body: Center(
        child: Text('Recipes For the Category!'),
      ),
    );
  }
}
