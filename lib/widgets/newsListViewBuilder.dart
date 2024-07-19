// ignore_for_file: file_names, non_constant_identifier_names

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/ArticleModel.dart';
import 'package:news_app/services/news_Service.dart';
import 'package:news_app/widgets/newsListView.dart';

class NewsListViewBuilder extends StatefulWidget {
  final String categoryName;
  const NewsListViewBuilder({
    super.key,
    required this.categoryName,
  });

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  late Future<List<ArticleModel>> future;
  @override
  void initState() {
    future = NewsService(Dio()).getNews(widget.categoryName);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, Snapshot) {
        if (Snapshot.hasData) {
          return newsListView(
            articles: Snapshot.data!,
          );
        } else if (Snapshot.hasError) {
          return const SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: Text(
                'oops There was an error 😥',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        } else {
          return const SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.grey,
                color: Colors.black,
              ),
            ),
          );
        }
      },
    );
  }
}
