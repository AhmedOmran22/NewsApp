// ignore_for_file: file_names, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:news_app/models/ArticleModel.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({
    super.key,
    required this.articleModel,
  });
  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              articleModel.urlImage!,
              width: double.infinity,
            ),
          ),
          // const SizedBox(height: 10),
          Text(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            articleModel.title!,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Text(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            articleModel.subTitle!,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Colors.grey,
                ),
          ),
        ],
      ),
    );
  }
}
