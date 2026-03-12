import 'package:flutter/material.dart';
import 'package:meals/models/category.dart';

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem({super.key, required this.category, required this.onSelectCategory});

  final Category category;

  final void Function() onSelectCategory;

  @override
  Widget build(context) {
    return InkWell(
      onTap: onSelectCategory,
      splashColor: category.color,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            colors: [category.color.withValues(alpha: 0.55), category.color.withValues(alpha: 0.9)],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft
          )
        ),
        child: Text(category.title, style: Theme.of(context).textTheme.titleLarge!.copyWith(
          color: Theme.of(context).colorScheme.onSurface
        ))
      ),
    );
  }
}