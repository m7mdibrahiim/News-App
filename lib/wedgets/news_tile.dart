import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModle});

  final ArticleModle articleModle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(7),
          child: Image.network(
            articleModle.image ?? "assets/news.png",
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          articleModle.title,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          articleModle.subTitle ?? '',
          style: TextStyle(color: Colors.grey, fontSize: 14),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }
}
