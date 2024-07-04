class ArticleModle {
  final String? image;
  final String title;
  final String? subTitle;

  ArticleModle(
      {required this.image, required this.title, required this.subTitle});
  factory ArticleModle.fromJson(json) {
    return ArticleModle(
      image: json['urlToImage'],
      title: json['title'],
      subTitle: json['description'],
    );
  }
}
