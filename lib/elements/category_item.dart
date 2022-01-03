import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({Key? key, required this.title, required this.color})
      : super(key: key);
  final String title;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 10, offset: Offset(2, 1))
        ],
        gradient: LinearGradient(
            colors: [color.withOpacity(.6), color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(title),
      ),
    );
  }
}
