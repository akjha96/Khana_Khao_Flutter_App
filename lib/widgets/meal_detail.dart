import 'package:flutter/material.dart';

import '../models/meal.dart';

class MealDetail extends StatelessWidget {
  final String mealId;
  final Meal selectedMeal;

  const MealDetail({Key? key, required this.mealId, required this.selectedMeal})
      : super(key: key);

  Widget buildSectionTitle(String text, BuildContext context) => Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Text(
          text,
          style: Theme.of(context).textTheme.headline6,
        ),
      );

  Widget buildContainer(Widget child) => Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        height: 150,
        width: 300,
        child: child,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
      );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            child: Image.network(
              selectedMeal.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          buildSectionTitle('Ingredients', context),
          buildContainer(
            ListView.builder(
              itemBuilder: ((context, index) => Card(
                    color: Theme.of(context).colorScheme.secondary,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      child: Text(
                          '${index + 1}. ${selectedMeal.ingredients[index]}'),
                    ),
                  )),
              itemCount: selectedMeal.ingredients.length,
            ),
          ),
          buildSectionTitle('Steps', context),
          buildContainer(
            ListView.separated(
              itemBuilder: ((context, index) => ListTile(
                    leading: CircleAvatar(
                      child: Text('#${index + 1}'),
                    ),
                    title: Text(selectedMeal.steps[index]),
                  )),
              itemCount: selectedMeal.steps.length,
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
