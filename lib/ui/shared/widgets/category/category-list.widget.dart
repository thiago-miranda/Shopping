import 'dart:js';

import 'package:shopping/ui/shared/widgets/shared/loader.widget.dart';

import '../../../../models/category-list-item.model.dart';
import 'category-card.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';

class CategoryList extends StatelessWidget {
  final List<CategoryListItemModel> categories;
  const CategoryList({Key? key, required this.categories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: Loader(object: categories, callback: list),
    );
  }

  Widget list() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      itemBuilder: (context, index) {
        CategoryListItemModel item = categories[index];
        return Padding(
          padding: const EdgeInsets.all(5),
          child: CategoryCard(
            item: item,
          ),
        );
      },
    );
  }
}
