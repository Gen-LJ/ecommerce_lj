class ProductModel {
  ProductModel({
      this.products, 
      this.total, 
      this.skip, 
      this.limit,});

  ProductModel.fromJson(dynamic json) {
    if (json['products'] != null) {
      products = [];
      json['products'].forEach((v) {
        products?.add(Products.fromJson(v));
      });
    }
    total = json['total'];
    skip = json['skip'];
    limit = json['limit'];
  }
  List<Products>? products;
  num? total;
  num? skip;
  num? limit;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (products != null) {
      map['products'] = products?.map((v) => v.toJson()).toList();
    }
    map['total'] = total;
    map['skip'] = skip;
    map['limit'] = limit;
    return map;
  }

}

class Products {
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
      this.images,});

  Products.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    price = json['price'];
    discountPercentage = json['discountPercentage'];
    rating = json['rating'];
    stock = json['stock'];
    brand = json['brand'];
    category = json['category'];
    thumbnail = json['thumbnail'];
    images = json['images'] != null ? json['images'].cast<String>() : [];
  }
  num? id;
  String? title;
  String? description;
  num? price;
  num? discountPercentage;
  num? rating;
  num? stock;
  String? brand;
  String? category;
  String? thumbnail;
  List<String>? images;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['description'] = description;
    map['price'] = price;
    map['discountPercentage'] = discountPercentage;
    map['rating'] = rating;
    map['stock'] = stock;
    map['brand'] = brand;
    map['category'] = category;
    map['thumbnail'] = thumbnail;
    map['images'] = images;
    return map;
  }

}