import 'package:flutter/material.dart';

import '../models/article_model.dart';
import 'news_tile.dart';

class NewsTileList extends StatelessWidget {
  const NewsTileList({super.key, required this.articles});
  final List<ArticleModel> articles;
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: articles.length,
      (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 30.0),
          child: NewsTile(articleModel: articles[index]),
        );
      },
    ));
  }
}
