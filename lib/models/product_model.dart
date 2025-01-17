import 'dart:convert';

List<ItemsModel> itemsModelFromJson(String str) =>
    List<ItemsModel>.from(json.decode(str).map((x) => ItemsModel.fromJson(x)));

String itemsModelToJson(List<ItemsModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ItemsModel {
  final List<Products>? products;
  final int? total;
  final int? skip;
  final int? limit;

  ItemsModel({
    this.products,
    this.total,
    this.skip,
    this.limit,
  });

  ItemsModel.fromJson(Map<String, dynamic> json)
      : products = (json['products'] as List?)?.map((dynamic e) => Products.fromJson(e as Map<String,dynamic>)).toList(),
        total = json['total'] as int?,
        skip = json['skip'] as int?,
        limit = json['limit'] as int?;

  Map<String, dynamic> toJson() => {
    'products' : products?.map((e) => e.toJson()).toList(),
    'total' : total,
    'skip' : skip,
    'limit' : limit
  };
}

class Products {
  final int? id;
  final String? title;
  final String? description;
  final dynamic? price;
  final dynamic? discountPercentage;
  final dynamic? rating;
  final int? stock;
  final String? brand;
  final String? category;
  final String? thumbnail;
  final List<String>? images;

  Products({
    this.id,
    this.title,
    this.description,
    this.price,
    this.discountPercentage,
    this.rating,
    this.stock,
    this.brand,
    this.category,
    this.thumbnail,
    this.images,
  });

  Products.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        title = json['title'] as String?,
        description = json['description'] as String?,
        price = json['price'] as dynamic?,
        discountPercentage = json['discountPercentage'] as dynamic?,
        rating = json['rating'] as dynamic?,
        stock = json['stock'] as int?,
        brand = json['brand'] as String?,
        category = json['category'] as String?,
        thumbnail = json['thumbnail'] as String?,
        images = (json['images'] as List?)?.map((dynamic e) => e as String).toList();

  Map<String, dynamic> toJson() => {
    'id' : id,
    'title' : title,
    'description' : description,
    'price' : price,
    'discountPercentage' : discountPercentage,
    'rating' : rating,
    'stock' : stock,
    'brand' : brand,
    'category' : category,
    'thumbnail' : thumbnail,
    'images' : images
  };
}