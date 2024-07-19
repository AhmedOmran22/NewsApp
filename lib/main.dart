// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:news_app/views/home_view.dart';

void main() async {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
/*
json['articles'][0]['source']['id];

*/ 