import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsServices {
  final Dio dio;
  NewsServices(this.dio);

  Future<List<ArticleModle>> getNews({required String category}) async {
    try {
      var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=3c88955c487e4d9db668f011dd85e737&category=$category',
      );
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModle> articleList = [];
      for (var article in articles) {
        ArticleModle articlesModle = ArticleModle.fromJson(article);
        articleList.add(articlesModle);
      }

      return articleList;
    } catch (e) {
      return [];
    }
  }
}
