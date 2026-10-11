import 'package:ecommerce_app_huma_volve/core/constants/api_endpoint.dart';
import 'package:ecommerce_app_huma_volve/core/network/api_clinet.dart';
import 'package:ecommerce_app_huma_volve/features/auth/login/model/login_model.dart';

class LoginService {
  ApiClinet apiClinet;
  LoginService(this.apiClinet);
  Future<LoginModel> logIn({
    required String email,
    required String password,
  }) async {
    final response = await apiClinet.dio.post(
      ApiEndpoint.logInEndPoint,
      data: {'email': email, 'password': password},
    );
    final Map<String, dynamic> jsonData = response.data;
    final modelData = LoginModel.fromjson(jsonData);

    return modelData;
  }
}
