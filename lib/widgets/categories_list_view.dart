import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../model/category_model.dart';
import '../services/news_service.dart';
import 'category_card.dart';

class TopHeadLineCard extends StatefulWidget {
  const TopHeadLineCard({super.key});

  @override
  State<TopHeadLineCard> createState() => _TopHeadLineCardState();
}

class _TopHeadLineCardState extends State<TopHeadLineCard> {
  List<CategoryModel> categoryarticles = [];

  @override
  void initState() {
    super.initState();
    getGeneralNewss();
  }

  Future<void> getGeneralNewss() async {
    categoryarticles = await NewsService(Dio()).getCategory();
    setState(() {});
  }

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
