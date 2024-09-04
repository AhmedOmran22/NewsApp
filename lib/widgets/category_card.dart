
import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views/category_view.dart';

class CategotyCard extends StatelessWidget {
  const CategotyCard({
    super.key,
    required this.myCategry,
  });

  final CategoryModel myCategry;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return CategoryView(
              categoryName: myCategry.title,
            );
          }),
        );
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            width: MediaQuery.of(context).size.width * .5,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  myCategry.image,
                ),
              ),
              borderRadius: BorderRadius.circular(24),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 10),
            width: MediaQuery.of(context).size.width * .5,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(.2),
              borderRadius: BorderRadius.circular(24),
            ),
          ),
          Text(
            myCategry.title,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }
}
