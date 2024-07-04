// import 'dart:ffi';

// import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:news_app/main.dart';
// import 'package:news_app/models/article_model.dart';
// import 'package:news_app/services/news_services.dart';
// import 'package:news_app/wedgets/news_tile.dart';

// class NewsListView extends StatefulWidget {
//   const NewsListView({super.key});

//   @override
//   State<NewsListView> createState() => _NewsListViewState();
// }

// class _NewsListViewState extends State<NewsListView> {
//   List<ArticleModle> articles = [];

//   bool isLoading = true;

//   @override
//   void initState() {
//     super.initState();
//     getGeneralNews();
//   }

//   Future<void> getGeneralNews() async {
//     articles =
//         await NewsServices(Dio()).getNews();
//     isLoading = false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isLoading
//         ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
//         : SliverList(
//             delegate: SliverChildBuilderDelegate(
//               (context, index) {
//                 return Padding(
//                   padding: const EdgeInsets.only(bottom: 30),
//                   child: NewsTile(
//                     articleModle: articles[index],
//                   ),
//                 );
//               },
//               childCount: articles.length,
//             ),
//           );

//     // ?ListView.builder(
//     //   physics: NeverScrollableScrollPhysics(),
//     //   shrinkWrap: true,
//     //   itemCount: 10,
//     //   itemBuilder: (context, index) {
//     //     return Padding(
//     //       padding: const EdgeInsets.only(bottom: 20),
//     //       child: NewsTile(articleModle: ArticleModle(iamge: 'iamge', title: 'title', subTitle: 'subTitle'),),
//     //     );
//     //   },
//     // );
//   }
// }
