import 'package:dio/dio.dart';
import 'package:signin/models/news_response.dart';

class NewsApiServices{
  String _apiKey="eef3e3bad4c04788b0e23a23c34eb352";
  String _url="https://newsapi.org/v2/everything?q=tesla&from=2021-05-08&sortBy=publishedAt&apiKey=eef3e3bad4c04788b0e23a23c34eb352";

  Dio _dio;
  NewsApiServices()
  {
    _dio =Dio();
  }

  // ignore: missing_return
  Future<List<Articles>> fetchNewsArticle() async
  {
    try{
      Response response = await _dio.get(_url);
      NewsResponse newsResponse =NewsResponse.fromJson(response.data);
      return newsResponse.articles;
    }
    on DioError catch(e)
    {
      print(e);
    }
  }



}