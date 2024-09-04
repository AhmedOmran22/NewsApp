// ignore: file_names
import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);
  final String _baseurl = 'https://newsapi.org';
  final String _apiKey = '1d742add7a8448f687ced75eda7629c0';
  Future<List<ArticleModel>> getNews(String category) async {
    try {
      Response response = await dio.get(
        '$_baseurl/v2/everything?q=$category&apiKey=$_apiKey',
      );

      Map<String, dynamic> jsondata = response.data;
      List<dynamic> articles = jsondata['articles'];
      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        if (article['title'] != null &&
            article['description'] != null &&
            article['urlToImage'] != null) {
          ArticleModel myArticle = ArticleModel(
            title: article['title'],
            subTitle: article['description'],
            urlImage: article['urlToImage'],
          );
          articlesList.add(myArticle);
        }
      }

      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
