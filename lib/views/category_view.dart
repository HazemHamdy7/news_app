// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:news_app_finish/model/category_model.dart';

import '../widgets/news_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({
    Key? key,
    required this.category,
  }) : super(key: key);

  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.indigo,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('News ',
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),
            Text('Cloud', style: TextStyle(color: Colors.orange))
          ],
        ),
      ),
      body: CustomScrollView(slivers: [
        NewListViewBluider(
          categroy: category,
        ),
      ]),
    );
  }
}
