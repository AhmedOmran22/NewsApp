import 'package:flutter/material.dart';
import 'package:news_app/widgets/newsListViewBuilder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({
    super.key,
    required this.categoryName,
  });

  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '$categoryName News',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            NewsListViewBuilder(categoryName: categoryName),
          ],
        ),
      ),
    );
  }
}
