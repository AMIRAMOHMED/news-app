import 'package:flutter/cupertino.dart';

import '../models/category_model.dart';
import 'category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  final List<CategoryModel> categrioes = const [
    CategoryModel(
        categoryName: "business", imageAssetUri: "assets/business.jpg"),
    CategoryModel(
        categoryName: "general", imageAssetUri: "assets/general.webp"),
    CategoryModel(
        categoryName: "entertainment", imageAssetUri: "assets/health.jpg"),
    CategoryModel(categoryName: "health", imageAssetUri: "assets/health.jpg"),
    CategoryModel(categoryName: "science", imageAssetUri: "assets/science.jpg"),
    CategoryModel(categoryName: "sports", imageAssetUri: "assets/sports.jpg"),
    CategoryModel(
        categoryName: "technology", imageAssetUri: "assets/technology.jpeg"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categrioes.length,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return CategoryCard(
              categroy: categrioes[index],
            );
          }),
    );
  }
}
