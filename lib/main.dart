import 'package:flutter/material.dart';
import 'package:meals/pages/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Ubuntu',
        textTheme: ThemeData.light().textTheme.copyWith(
              headline1: const TextStyle(
                fontFamily: 'Cookie',
                fontSize: 24,
              ),
            ),
      ),
      home: const CategoriesScreen(),
    );
  }
}
