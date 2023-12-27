import 'package:flutter/material.dart';
import 'package:news_app/widgest/categories_list_view.dart';

import '../widgest/newslistviewbuilder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: RichText(
              text: const TextSpan(children: <TextSpan>[
            TextSpan(
              text: "News",
              style: TextStyle(color: Colors.black),
            ),
            TextSpan(text: "cloud", style: TextStyle(color: Colors.yellow))
          ])),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: CategoriesListView(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 30,
                ),
              ),
              NewListViewBuilder(category: "general"),
            ],
          ),
        ));
  }
}
