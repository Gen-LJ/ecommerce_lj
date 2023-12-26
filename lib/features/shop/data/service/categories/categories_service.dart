import 'package:dio/dio.dart';
import 'package:ecommerce_lj/utils/constants/api_const.dart';
import 'package:retrofit/http.dart';

part 'categories_service.g.dart';
@RestApi(baseUrl: ApiConst.baseUrl)
abstract class CategoriesService {

  factory CategoriesService(Dio dio) => _CategoriesService(dio);


  @GET(ApiConst.categoriesEndPoint)
  Future<List<String>> getCategories();
}