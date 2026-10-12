import 'package:ecommerce_app_huma_volve/core/constants/api_endpoint.dart';
import 'package:ecommerce_app_huma_volve/core/network/api_clinet.dart';
import 'package:ecommerce_app_huma_volve/features/auth/login/model/signup_model.dart';

class SignupService {
  ApiClinet apiClinet;
  SignupService(this.apiClinet);
  Future<SignupModel> signUp(SignupModel signUpRequestModel) async {
    final response = await apiClinet.dio.post(
      ApiEndpoint.signUpEndPoint,
      data: {
        'name': signUpRequestModel.name,
        'email': signUpRequestModel.email,
        'password': signUpRequestModel.password,
        'avatar': 'https://i.imgur.com/LDOO4Qs.jpg',
      },
    );
    final jsonData = response.data;
    final convertedData = SignupModel.fromjson(jsonData);
    return convertedData;
  }
}
