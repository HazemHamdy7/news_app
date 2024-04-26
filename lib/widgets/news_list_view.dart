import 'package:flutter/material.dart';
import '../model/article_model.dart';
import 'news_title.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key, required this.articles});

  final List<ArticleModel> articles;

  // @override
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length,
          (context, index) {
        return NewsTitle(
          articleModel: articles[index],
        );
      }),
    );
  }
}
