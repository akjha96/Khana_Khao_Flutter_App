import 'package:flutter/material.dart';

import '../widgets/meal_detail.dart';
import '../dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-detail';
  final Function toggleFavourite;
  final Function isFavourite;
  const MealDetailScreen(
      {Key? key, required this.toggleFavourite, required this.isFavourite})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as String;
    final mealId = args;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);

    return Scaffold(
      appBar: AppBar(
        title: Text(selectedMeal.title),
      ),
      body: MealDetail(mealId: mealId, selectedMeal: selectedMeal),
      floatingActionButton: FloatingActionButton(
          child: Icon(isFavourite(mealId) ? Icons.star : Icons.star_border),
          onPressed: () => toggleFavourite(mealId)),
    );
  }
}
