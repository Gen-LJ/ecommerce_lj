
import 'package:ecommerce_lj/utils/constants/api_const.dart';
import 'package:retrofit/http.dart';

import '../../model/product_model.dart';
import 'package:dio/dio.dart';

part 'product_by_category_service.g.dart';
@RestApi(baseUrl: ApiConst.baseUrl)
abstract class ProductByCategoryService{
  factory ProductByCategoryService(Dio dio) => _ProductByCategoryService(dio);

@GET('products/category/{category}')
Future<ProductModel> getProductByCategory(@Path('category') String category);
}