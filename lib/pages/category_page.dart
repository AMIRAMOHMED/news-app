
import 'package:flutter/material.dart';

import '../widgest/newslistviewbuilder.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key,required this.category});
final String category;
  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        NewListViewBuilder(category: category,),
      ],
    );
  }
}
