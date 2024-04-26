// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:news_app_finish/model/category_model.dart';

import '../views/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.categoryModel,
  }) : super(key: key);

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const CategoryView();
            }));
          },
          child:

              //  ClipRRect(
              //   borderRadius: BorderRadius.circular(12),
              //   child: Image.asset(
              //     categoryModel.image!,
              //     width: 180,
              //     height: 180,
              //     fit: BoxFit.cover,
              //   ),

              // )
              Container(
            width: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                  image: AssetImage('assets/technology.jpeg'),
                  fit: BoxFit.fill,
                )),
            child: Center(
              child: Text(

                  // 'Technology',
                  categoryModel.categoryName ?? "No Category",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            ),
          ),
        ));
  }
}
