part of 'all_products_cubit.dart';

@immutable
abstract class AllProductsState {}

class AllProductsInitial extends AllProductsState {}
class AllProductsLoad extends AllProductsState {}
class AllProductsSuccess extends AllProductsState {
  final List<Products> allProducts;

  AllProductsSuccess(this.allProducts);
}
class AllProductsFail extends AllProductsState {
  final String error;

  AllProductsFail(this.error);

}
