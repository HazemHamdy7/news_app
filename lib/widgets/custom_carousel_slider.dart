// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app_finish/model/category_model.dart';

class GategoeyTitle extends StatelessWidget {
  const GategoeyTitle({
    super.key,
    this.categoryModel,
    String? image,
  });

  final CategoryModel? categoryModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.asset(
              'assets/technology.jpeg',
              width: 180,
              height: 180,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: 140,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black26,
            ),
            child: const Center(
              child: Text(
                textAlign: TextAlign.center,
                'no name',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
