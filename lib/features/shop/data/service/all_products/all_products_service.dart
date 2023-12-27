
import 'package:ecommerce_lj/utils/constants/api_const.dart';
import 'package:retrofit/http.dart';

import '../../model/product_model.dart';
import 'package:dio/dio.dart';

part 'all_products_service.g.dart';
@RestApi(baseUrl: ApiConst.baseUrl)
abstract class AllProductService{

  factory AllProductService(Dio dio)=> _AllProductService(dio);


  @GET(ApiConst.allProductEndPoint)
  Future<ProductModel> getAllProduct();
  
}