import 'package:ecommerce_app_huma_volve/features/auth/login/model/category_model.dart';

class ProductsModel {
  int? id;
  String? title;
  int? price;
  String? description;
  CategoryModel? category;
  List<String>? images;

  ProductsModel({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.images,
  });

  ProductsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    price = json['price'];
    description = json['description'];

    images = json['images'].cast<String>();
  }
}
