import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-detail';
  const MealDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as String;
    final mealId = args;
    return Scaffold(
      appBar: AppBar(title: Text('$mealId')),
      body: Center(
        child: Text('Meal Detail - $mealId'),
      ),
    );
  }
}
