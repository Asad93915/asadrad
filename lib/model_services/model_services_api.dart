import 'package:dio/dio.dart';
import 'package:signin/model_class_task/model_class.dart';

class ModelApiServices{
  String _apiKey="eef3e3bad4c04788b0e23a23c34eb352";
  String _url="http://apps.ab-sol.net/s4mQaApi/api/Users/Get?auth_token=cb77cce6-c2cb-471b-bdd4-5dac8c93b759";

  Dio _dio;
  ModelApiServices()
  {
    _dio =Dio();
  }

  // ignore: missing_return
  Future<List<Data>> fetchDataArticle()  async
  {
    try{
      var response = await _dio.get(_url);
      ModelResponse modelResponse=ModelResponse.fromJson(response.data);
      return modelResponse.data;
    }
    on DioError catch(e)
    {
      print(e);
    }
  }
}
