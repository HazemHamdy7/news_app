import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../model/category_model.dart';
import '../services/news_service.dart';
import 'category_card.dart';

class CatrgoryListView extends StatefulWidget {
  const CatrgoryListView({super.key});

  @override
  State<CatrgoryListView> createState() => _CatrgoryListViewState();
}

class _CatrgoryListViewState extends State<CatrgoryListView> {
  List<CategoryModel> categoryarticles = [
    CategoryModel(
      image: 'assets/technology.jpeg',
      categoryName: 'General',
    ),
    CategoryModel(
      image: 'assets/technology.jpeg',
      categoryName: 'business',
    ),
    CategoryModel(
      image: 'assets/technology.jpeg',
      categoryName: 'Entertainment',
    ),
    CategoryModel(
      image: 'assets/technology.jpeg',
      categoryName: 'Sports',
    ),
    CategoryModel(
      image: 'assets/technology.jpeg',
      categoryName: 'Technology',
    ),
  ];

  // @override
  // void initState() {
  //   super.initState();
  //   getGeneralNewss();
  // }

  // Future<void> getGeneralNewss() async {
  //   categoryarticles =
  //       await NewsService(Dio()).getNews(categoryName: categoryarticles);
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoryarticles.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              categoryModel: categoryarticles[index],
            );
          }),
    );
  }
}
