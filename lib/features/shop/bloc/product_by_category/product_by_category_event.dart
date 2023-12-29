part of 'product_by_category_bloc.dart';

@immutable
abstract class ProductByCategoryEvent {}
class GetProductByCategory extends ProductByCategoryEvent{
  final String category;

  GetProductByCategory(this.category);
}
