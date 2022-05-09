import 'package:shopping/models/category.model.dart';

class ProductDetailsModel {
  String? id;
  String? title;
  String? brand;
  String? tag;
  double? price;
  String? description;
  List<String>? images;
  CategoryModel? category;

  ProductDetailsModel({
    this.id,
    this.title,
    this.brand,
    this.tag,
    this.price,
    this.description,
    this.images,
    this.category,
  });

  ProductDetailsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    brand = json['brand'];
    tag = json['tag'];
    price = json['price'];
    description = json['description'];
    images = json['images'].cast<String>();
    category = json['category'] != null
        ? CategoryModel.fromJson(json['category'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['tag'] = tag;
    data['price'] = price;
    data['description'] = description;
    data['brand'] = brand;
    data['images'] = images;
    if (category != null) {
      data['category'] = category!.toJson();
    }
    return data;
  }
}
