import 'package:flutter/material.dart';
import 'package:news_app_finish/widgets/news_list_view_builder.dart';
import '../widgets/categories_list_view.dart';
import '../widgets/custom_carousel_slider.dart';

import '../widgets/custom_trending.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
        body: const CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CatrgoryListView()),
            SliverToBoxAdapter(child: SizedBox(height: 20)),
            SliverToBoxAdapter(child: CustomTrandingNews()),
            // SliverToBoxAdapter(child: SizedBox(height: 20)),
            // SliverToBoxAdapter(child: GategoeyTitle()),
            SliverToBoxAdapter(child: SizedBox(height: 20)),
            NewListViewBluider(
              categroy: 'general',
            )
          ],
        ));
  }
}
