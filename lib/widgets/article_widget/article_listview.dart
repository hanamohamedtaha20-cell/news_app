import 'package:flutter/material.dart';
import 'package:news_app3/modal/article.dart';
import 'package:news_app3/network/API.dart';
import 'article_item.dart';
class ArticleListview extends StatefulWidget {
  ArticleListview({super.key});

  @override
  State<ArticleListview> createState() => _ArticleListviewState();
}

class _ArticleListviewState extends State<ArticleListview> {
  List<Article>?  newArticles;

  ApiService apiServices =ApiService();

  @override
  Widget build(BuildContext context) {
    return newArticles==null?SliverToBoxAdapter(child: Center(child: CircularProgressIndicator())):
    SliverList.builder(
      itemBuilder: (context,index){
        return  ArticleItem(article: newArticles![index],);
      },itemCount: newArticles!.length,
    );

  }
  @override
  void initState() {
    getArticle();

    // TODO: implement initState
    super.initState();
  }
  getArticle()async{
    newArticles = await apiServices.getNews(category: "sports");
    setState(() {

    });

  }
}