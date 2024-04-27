import 'package:dio/dio.dart';
import 'package:news_app_finish/model/category_model.dart';

import '../model/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getNews({required String categoryName}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=3c88955c487e4d9db668f011dd85e737&category=$categoryName');

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articalsList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articalsList.add(articleModel);
      }

      return articalsList;
    } catch (e) {
      return [];
    }
  }

  Future<List<CategoryModel>> getCategory() async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=3c88955c487e4d9db668f011dd85e737&category=general');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<CategoryModel> calsList = [];
      for (var article in articles) {
        CategoryModel articleModel = CategoryModel(
          image: article['urlToImage'],
          categoryName: article['title'],
        );
        calsList.add(articleModel);
      }
      return calsList;
    } catch (e) {
      return [];
    }
  }
}
