import 'package:flutter/material.dart';

class CategoryCardWidget extends StatelessWidget {
  const CategoryCardWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: title == "All" ? Colors.white : Colors.grey.withOpacity(0.2)),
      child: Text(
        title,
        style: TextStyle(color: title == "All" ? Colors.black: Colors.white),
      ),
    );
  }
}
