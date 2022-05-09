class CategoryListItemModel {
  String? id;
  String? title;
  String? tag;

  CategoryListItemModel({this.id, this.title, this.tag});

  CategoryListItemModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    tag = json['tag'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['id'] = id;
    data['title'] = title;
    data['tag'] = tag;

    return data;
  }
}
