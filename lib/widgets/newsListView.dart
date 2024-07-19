// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:news_app/models/ArticleModel.dart';
import 'package:news_app/widgets/newsTile.dart';

class newsListView extends StatelessWidget {
  final List<ArticleModel> articles;

  const newsListView({
    super.key,
    required this.articles,
  });

  @override
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return NewsTile(
            articleModel: articles[index],
          );
        },
      ),
    );
  }
}
