

import 'package:bloc/bloc.dart';
import 'package:ecommerce_lj/features/shop/data/service/product_by_category/product_by_category_service.dart';
import 'package:meta/meta.dart';
import 'package:dio/dio.dart';
import '../../data/model/product_model.dart';

part 'product_by_category_event.dart';
part 'product_by_category_state.dart';

class ProductByCategoryBloc extends Bloc<ProductByCategoryEvent, ProductByCategoryState> {
  ProductByCategoryBloc() : super(ProductByCategoryInitial()) {
    final ProductByCategoryService _productByCategoryService = ProductByCategoryService(Dio());
    on<ProductByCategoryEvent>((event, emit) async{
      if(event is GetProductByCategory){
        emit(ProductByCategoryLoad());
        try{
          final productModel = await _productByCategoryService.getProductByCategory(event.category);
          final List<Products>? productsByCategory = productModel.products;
          emit(ProductByCategorySuccess(productsByCategory!));
        }
        catch(e){
          emit(ProductByCategoryFail(e.toString()));
        }
      }
    });
  }
}
