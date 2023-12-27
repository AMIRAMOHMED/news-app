import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

import '../services/new_services.dart';
import 'circular_indicator.dart';
import 'customer_text.dart';
import 'news_tile_list.dart';

class NewListViewBuilder extends StatefulWidget {
  const NewListViewBuilder({super.key, required this.category});

  final String category;

  @override
  State<NewListViewBuilder> createState() => _NewListViewBuilderState();
}

class _NewListViewBuilderState extends State<NewListViewBuilder> {
  var future;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewServices(Dio()).getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsTileList(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const CustomerText(
              message: "oops have error,try later",
            );
          } else {
            return const SliverToBoxAdapter(
              child: CircularIndicator(),
            );
          }
        });
  }
}
