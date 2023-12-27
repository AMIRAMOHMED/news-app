class ArticleModel {
  final String? image;
  final String title;
  final String? subtitle;
  final String webUrl;

  ArticleModel(
      {required this.image,
      required this.subtitle,
      required this.webUrl,
      required this.title});

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
        image: json["urlToImage"],
        subtitle: json["description"],
        webUrl: json["url"],
        title: json["title"]);
  }
}
