import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

import '../pages/category_page.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    required this.categroy,
    super.key,
  });

  final CategoryModel categroy;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CategoryPage(category: categroy.categoryName);
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 18.0),
        child: Container(
          width: 85,
          height: 160,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(23),
              image: DecorationImage(
                  image: AssetImage(categroy.imageAssetUri),
                  fit: BoxFit.contain)),
          child: Center(
            child: Text(
              categroy.categoryName,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
