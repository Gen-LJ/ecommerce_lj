part of 'categories_cubit.dart';

@immutable
abstract class CategoriesState {}

class CategoriesInitial extends CategoriesState {}
class CategoriesLoad extends CategoriesState {}
class CategoriesSuccess extends CategoriesState {
  final List<String> categories;

  CategoriesSuccess(this.categories);
}
class CategoriesFail extends CategoriesState {
  final String error;

  CategoriesFail(this.error);
}
