
import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });

  final List<CategoryModel> myCategry = const [
    CategoryModel(title: 'General', image: 'assets/general.avif'),
    CategoryModel(title: 'Entertaiment', image: 'assets/entertaiment.avif'),
    CategoryModel(title: 'Business', image: 'assets/business.avif'),
    CategoryModel(title: 'Health', image: 'assets/health.avif'),
    CategoryModel(title: 'Science', image: 'assets/science.avif'),
    CategoryModel(title: 'Technologies', image: 'assets/technology.jpeg'),
    CategoryModel(title: 'Sport', image: 'assets/sports.avif'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .17,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: myCategry.length,
        itemBuilder: (context, index) {
          return CategotyCard(
            myCategry: myCategry[index],
          );
        },
      ),
    );
  }
}
