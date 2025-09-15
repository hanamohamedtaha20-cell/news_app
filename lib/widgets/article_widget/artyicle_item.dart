import 'package:flutter/material.dart';
import '../../styles.dart';
import '../expandable_text.dart';
class ArticleItem extends StatelessWidget {
  const ArticleItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              ),

              child: Image.network(
                fit: BoxFit.fill,
                "https://images.pexels.com/photos/25390308/pexels-photo-25390308.jpeg",
                width: double.infinity,height:200 ,)),
          ExpandableText(
            text: "titletitletitletitletitletitle titletitle title titletitle titletitletitletitletitletitle titletitle title titletitle titletitletitletitletitletitle titletitle title titletitle titletitletitletitletitletitle titletitle title titletitle titletitletitletitletitletitle titletitle title titletitle ",
          ),

          Text(
              maxLines: 1,
              overflow:TextOverflow.ellipsis,
              "titletitletitletitletitletitle titletitle title titletitle ",style: Appstyles.textStyle30.copyWith(
            color: Colors.grey,
          )),

        ],
      ),
    );
  }
}