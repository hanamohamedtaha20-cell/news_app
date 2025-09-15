import 'package:flutter/material.dart';

import '../../modal/category.dart';
import 'news_category.dart';

class CategoryListview extends StatelessWidget {
  const CategoryListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context , index){
          return NewsCategory(x: newscategory[index] );
        },itemCount:newscategory.length,),
    );
  }
}
