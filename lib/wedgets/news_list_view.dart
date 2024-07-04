import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/wedgets/news_tile.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModle> articles;

  const NewsListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: NewsTile(
              articleModle: articles[index],
            ),
          );
        },
      ),
    );

    // ?ListView.builder(
    //   physics: NeverScrollableScrollPhysics(),
    //   shrinkWrap: true,
    //   itemCount: 10,
    //   itemBuilder: (context, index) {
    //     return Padding(
    //       padding: const EdgeInsets.only(bottom: 20),
    //       child: NewsTile(articleModle: ArticleModle(iamge: 'iamge', title: 'title', subTitle: 'subTitle'),),
    //     );
    //   },
    // );
  }
}
