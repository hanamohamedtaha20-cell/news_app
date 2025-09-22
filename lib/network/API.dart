import 'package:dio/dio.dart';
import 'package:news_app3/modal/article.dart';

class ApiService{
  Dio dio = Dio();
  getNews({required String category})async{
    var response =await dio.get("https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=bec16e58473b483cbc8d35df2e769aca");
    var json = response.data;
    List<Article> articles = [];
    for(var item in json["articles"]){
      articles.add(
        Article(title: item["title"], description: item["descrebtion"], urlToImage: item ["urlToImage"], url: item ["url"])
      );
    }
    return articles;
  }
}