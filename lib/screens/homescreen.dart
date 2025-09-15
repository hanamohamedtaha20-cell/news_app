import 'package:flutter/material.dart';
import 'package:news_app3/styles.dart';
import 'package:news_app3/widgets/category_widget/category_listview.dart';
import '../widgets/article_widget/artyicle_item.dart';


class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("News App",style: Appstyles.textStyle30,),
      ),
      body:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            CategoryListview(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("General News",style:  Appstyles.textStyle30.copyWith(color: Colors.black),),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context,index){
                return ArticleItem();
              },itemCount: 5,
            )
          ],
        ),
      ) ,
    );
  }
}
