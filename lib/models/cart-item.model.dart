class CartItemModel {
  String? id;
  String? title;
  String? image;
  int? quantity;
  double? price;

  CartItemModel({this.id, this.image, this.price, this.quantity, this.title});

  CartItemModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    image = json['image'];
    quantity = json['quantity'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['id'] = id;
    data['title'] = title;
    data['image'] = image;
    data['quantity'] = quantity;
    data['price'] = price;

    return data;
  }
}
