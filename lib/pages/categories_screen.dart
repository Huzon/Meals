import 'package:flutter/material.dart';
import 'package:meals/elements/category_item.dart';
import '../dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Meals App',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      body: GridView(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 10,
        ),
        children: [
          ...dummyCategories
              .map((e) => CategoryItem(title: e.title, color: e.color))
              .toList(),
        ],
      ),
    );
  }
}
