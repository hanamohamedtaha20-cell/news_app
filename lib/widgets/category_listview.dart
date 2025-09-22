import 'package:flutter/material.dart';
import 'package:news_app3/widgets/ctegory_item.dart';

import '../modal/category.dart';
class categoryListView extends StatelessWidget {
  const categoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
          return CategoryItem(x: newscategory[index]);
        },itemCount: newscategory.length,
      ),
    );
  }
}