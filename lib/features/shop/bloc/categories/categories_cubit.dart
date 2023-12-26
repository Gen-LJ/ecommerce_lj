import 'package:bloc/bloc.dart';
import 'package:ecommerce_lj/features/shop/data/service/categories/categories_service.dart';
import 'package:meta/meta.dart';
import 'package:dio/dio.dart';

part 'categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit() : super(CategoriesInitial());
  final CategoriesService _categoriesService = CategoriesService(Dio());

  void getCategories()async{
    emit(CategoriesLoad());
    try{
      List<String> categories = await _categoriesService.getCategories();
      emit(CategoriesSuccess(categories));
    }
    catch(e){
      emit(CategoriesFail(e.toString()));
    }
  }

}
