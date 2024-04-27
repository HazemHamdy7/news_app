// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:news_app_finish/model/article_model.dart';

import '../services/news_service.dart';
import 'news_list_view.dart';

class NewListViewBluider extends StatefulWidget {
  const NewListViewBluider({
    Key? key,
    required this.categroy,
  }) : super(key: key);

  final String categroy;
  @override
  State<NewListViewBluider> createState() => _NewListViewBluiderState();
}

class _NewListViewBluiderState extends State<NewListViewBluider> {
  var future;

  @override
  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getNews(
      categoryName: widget.categroy,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(articles: snapshot.data!);
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
                child: Center(
              child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: ErrorMessage(
                      errMessage:
                          "oops! No News Found  Palese Try Again or\n  check your connection")),
            ));
          } else {
            return const SliverToBoxAdapter(
                child: Center(
                    child: CircularProgressIndicator(
                        backgroundColor: Colors.indigo)));
          }
        });
  }
}

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({
    Key? key,
    required this.errMessage,
  }) : super(key: key);

  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Text(
      errMessage,
      style: const TextStyle(
          fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
    );
  }
}



// isLoading
//         ? const SliverToBoxAdapter(
//             child: Center(child: CircularProgressIndicator()))
//         : articles.isNotEmpty
//             ? NewsListView(articles: articles)
//             : const SliverToBoxAdapter(
//                 child: Center(
//                   child: Padding(
//                     padding: EdgeInsets.all(10.0),
//                     child: Text(
//                         "oops! No News Found  Palese Try Again or  check your connection",
//                         style: TextStyle(
//                             fontSize: 16,
//                             color: Colors.black,
//                             fontWeight: FontWeight.bold)),
//                   ),
//                 ),
//               );