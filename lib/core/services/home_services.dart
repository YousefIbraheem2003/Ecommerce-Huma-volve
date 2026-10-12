import 'package:ecommerce_app_huma_volve/core/constants/api_endpoint.dart';
import 'package:ecommerce_app_huma_volve/core/network/api_clinet.dart';
import 'package:ecommerce_app_huma_volve/features/auth/login/model/category_model.dart';
import 'package:ecommerce_app_huma_volve/features/auth/login/model/products_model.dart';

class HomeServices {
  final ApiClinet apiClient;
  HomeServices(this.apiClient);
  Future<List<CategoryModel>> getCategories() async {
    final response = await apiClient.dio.get(ApiEndpoint.categoriesEndPoint);
    final List jsonData = response.data;
    final List<CategoryModel> categories = jsonData
        .map((e) => CategoryModel.fromJson(e))
        .toList();
    return categories;
  }

  Future<List<ProductsModel>> getProducts(int id) async {
    final response = await apiClient.dio.get(
      '${ApiEndpoint.categoriesEndPoint}/$id/${ApiEndpoint.productsEndPoint}',
    );
    List jsonData = response.data;
    final List<ProductsModel> products = jsonData
        .map((e) => ProductsModel.fromJson(e))
        .toList();
    return products;
  }
}
