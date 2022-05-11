import '../../../../models/product-list-item.model.dart';
import '../shared/loader.widget.dart';
import '../product/product-card.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class ProductList extends StatelessWidget {
  final List<ProductListItemModel>? products;
  const ProductList({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 410,
      child: Loader(
        object: products,
        callback: list,
      ),
    );
  }

  Widget list() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: products!.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(5),
          child: ProductCard(
            item: products![index],
          ),
        );
      },
    );
  }
}
