import 'package:flutter/material.dart';
import 'package:news_app3/modal/category.dart';
import '../../styles.dart';

class NewsCategory extends StatelessWidget {
  const NewsCategory({super.key, required this.x,});
  final Category x ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: CircleAvatar(
        backgroundImage: NetworkImage(x.image) ,
        radius: 60,
        child: Text(x.name,style: Appstyles.textStyle30,),
      ),
    );

  }
}
