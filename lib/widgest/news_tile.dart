import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/pages/web_view_stack.dart';


class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return  WebViewStack(webUrl:articleModel.webUrl ,);
            }));
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: articleModel.image != null
                ? Image.network(
                    articleModel.image!,
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  )
                : Image.asset(
                    "assets/loading.jpg",
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          articleModel.title,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: const TextStyle(
              fontWeight: FontWeight.w500, fontSize: 20, color: Colors.black87),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          articleModel.subtitle ?? "",
          maxLines: 2,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        )
      ],
    );
  }
}
