import 'package:flutter/material.dart';
import '../../modal/category.dart';
import 'ctegory_item.dart';

class CategoryListview extends StatelessWidget {
  const CategoryListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context , index){
          return CategoryItem(x: newscategory[index] );
        },itemCount:newscategory.length,),
    );
  }
}
