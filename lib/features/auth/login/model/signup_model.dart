class SignupModel {
  String? name;
  String? email;
  String? password;
  SignupModel({
    required this.email,
    required this.name,
    required this.password,
  });
  SignupModel.fromjson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    password = json['password'];
  }
}
