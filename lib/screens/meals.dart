import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key, required this.title, required this.meals});

  final String title;
  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    Widget content;

    if (meals.isEmpty) {
      content = const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Uh oh!'),
            SizedBox(height: 16),
            Text('Try selecting a different category!'),
          ],
        ),
      );
    } else {
      content = ListView.builder(
        itemCount: meals.length,
        itemBuilder: (ctx, index) {
          return Text(meals[index].title);
        },
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: content,
    );
  }
}
