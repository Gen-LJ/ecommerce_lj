part of 'product_by_category_bloc.dart';

@immutable
abstract class ProductByCategoryState {}

class ProductByCategoryInitial extends ProductByCategoryState {}
class ProductByCategoryLoad extends ProductByCategoryState {}
class ProductByCategorySuccess extends ProductByCategoryState {
  final List<Products> productsByCategory;

  ProductByCategorySuccess(this.productsByCategory);
}
class ProductByCategoryFail extends ProductByCategoryState {
  final String error;

  ProductByCategoryFail(this.error);
}
