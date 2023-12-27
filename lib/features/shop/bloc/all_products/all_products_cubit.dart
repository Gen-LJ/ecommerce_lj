import 'package:bloc/bloc.dart';
import 'package:ecommerce_lj/features/shop/data/service/all_products/all_products_service.dart';
import 'package:meta/meta.dart';

import '../../data/model/product_model.dart';
import 'package:dio/dio.dart';

part 'all_products_state.dart';

class AllProductsCubit extends Cubit<AllProductsState> {
  AllProductsCubit() : super(AllProductsInitial());
  final AllProductService _allProductService = AllProductService(Dio());

  void getAllProducts() async{
    emit(AllProductsLoad());
    try{
      final productModel = await _allProductService.getAllProduct();
      final List<Products>? allProducts = productModel.products;
      emit(AllProductsSuccess(allProducts!));
    }
    catch(e){
      emit(AllProductsFail(e.toString()));
    }
  }
}
