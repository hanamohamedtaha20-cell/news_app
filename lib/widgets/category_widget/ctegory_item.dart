
import 'package:flutter/material.dart';
import 'package:news_app3/modal/category.dart';
import '../../styles.dart';
class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.x});
  final Category x;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: CircleAvatar(
        radius: 60,
        backgroundImage: NetworkImage(x.image),
        child: Text(x.name,style: Appstyles.textStyle30,),
      ),
    );
  }
}