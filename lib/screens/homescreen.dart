import 'package:flutter/material.dart';
import 'package:news_app3/styles.dart';
import 'package:news_app3/widgets/article_widget/article_listview.dart';
import 'package:news_app3/widgets/category_listview.dart';


class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("News App",style: Appstyles.textStyle30,),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: categoryListView()),
          SliverToBoxAdapter(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 15),
            child: Text("General News",style:Appstyles.textStyle30.copyWith(
                color: Colors.black
            ) ,),
          ),),
          ArticleListview(),
          ],
        ),
      ) ;

  }
}
