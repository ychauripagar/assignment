part of 'article_bloc.dart';

class ArticleRepository {
  Dio dio;

  ArticleRepository(this.dio);

  ///Get the articles
  Future<List<ArticleModel?>?> getArticles(String apiUrl) async {
    print('API Url--- $apiUrl');

    try {
      //404
      var response = await dio.get(apiUrl);
      if (response.statusCode == 200) {
        var results = response.data['results'];
        List<ArticleModel> articleModelList = [];
        if (results.isNotEmpty) {
          for (int i = 0; i < results.length; i++) {
            ArticleModel articleModel = ArticleModel.fromJson(results[i]);
            articleModelList.add(articleModel);
          }
          return articleModelList;
        }
        return null;
      } else {
        Fluttertoast.showToast(
            msg: response.data,
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);

        print('Request failed with status: ${response.statusCode}.');
        return null;
      }
    } on DioError catch (e) {
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
      if (e.response != null) {
        print(e.response!.data);
        print(e.response!.headers);
        print(e.response!.requestOptions);
      } else {
        // Something happened in setting up or sending the request that triggered an Error
        print(e.requestOptions);
        print(e.message);
      }
      return null;
    }
  }
}
