import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../model/article_model.dart';
import '../services/news_service.dart';
import 'news_list_view.dart';

class NewListViewBluider extends StatefulWidget {
  const NewListViewBluider({
    super.key,
  });

  @override
  State<NewListViewBluider> createState() => _NewListViewBluiderState();
}

class _NewListViewBluiderState extends State<NewListViewBluider> {
  List<ArticleModel> articles = [];

  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsService(Dio()).getNews();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()))
        : articles.isNotEmpty
            ? NewsListView(articles: articles)
            : const SliverToBoxAdapter(
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                        "oops! No News Found  Plese Try Again or  check your connection",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              );
  }
}
