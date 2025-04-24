// import 'package:flutter_base/database/secure_storage_helper.dart';
// import 'package:flutter_base/network/api_client.dart';
// import 'package:flutter_base/utils/utils.dart';
//
// import '../models/response/api_response.dart';
// import '../models/response/authen/forgot_password_res.dart';
// import '../models/response/authen/login_res.dart';
// import '../models/response/authen/sign_up_res.dart';
// import '../network/api_util.dart';
//
// abstract class AuthRepository {
//   Future<LoginRes?> getToken();
//
//   Future<Map<String, String>> getLoginInfo();
//
//   Future<void> saveToken(LoginRes loginRes);
//
//   Future<void> saveLoginInfo(String username, String password);
//
//   Future<void> removeToken();
//
//   Future<void> removeLoginInfo();
//
//   Future<LoginRes> signIn(String username, String password);
//
//   Future<LoginRes> loginSocial(
//       {required String provider, required String accessToken});
//
//   Future<APIResponse<SignUpRes>> signUp({
//     required String shortName,
//     required String phone,
//     required String password,
//     required String email,
//   });
//
//   Future<APIResponse<ForgotPassWordRes>> forgotPassword(
//       {required String userName});
//
//   Future<APIResponse> changePassword(
//       {required String token, required String code, required String password});
//
//   Future<LoginRes> refreshToken(String refreshToken);
//
//   Future<APIResponse> pushFcmToken(
//       {required String fcmToken, required String deviceInfo});
//
//   Future<APIResponse> deleteFcmToken({required String fcmToken});
// }
//
// class AuthRepositoryImpl extends AuthRepository {
//   ApiClient apiClient = ApiUtil.apiClient;
//
//   @override
//   Future<LoginRes?> getToken() async {
//     return await SecureStorageHelper.instance.getToken();
//   }
//
//   Future<Map<String, String>> getLoginInfo() async{
//     return await SecureStorageHelper.instance.getLoginInfo();
//   }
//
//   @override
//   Future<void> removeToken() async {
//     return await SecureStorageHelper.instance.removeToken();
//   }
//
//   Future<void> removeLoginInfo()async{
//     return await SecureStorageHelper.instance.removeLoginInfo();
//   }
//
//   @override
//   Future<void> saveToken(LoginRes loginRes) async {
//     return SecureStorageHelper.instance.saveToken(loginRes);
//   }
//
//   Future<void> saveLoginInfo(String username, String password) async {
//     return SecureStorageHelper.instance.saveLoginInfo(username, password);
//   }
//
//   @override
//   Future<LoginRes> signIn(String username, String password) async {
//     final body = {"username": username, "password": password};
//     return apiClient.authLogin(body);
//   }
//
//   @override
//   Future<APIResponse<SignUpRes>> signUp(
//       {required String shortName,
//       required String phone,
//       required String password,
//       required String email}) {
//     final body = {
//       "short_name": shortName,
//       "phone": phone,
//       "password": password,
//       "confirmPassword": password,
//       "primary": false,
//       "type_mode": "GTS",
//       "email": email
//     };
//     return apiClient.signUp(body);
//   }
//
//   @override
//   Future<LoginRes> loginSocial(
//       {required String provider, required String accessToken}) {
//     final body = {
//       "type_mode": "GTS",
//       "provider": provider,
//       "access_token": accessToken
//     };
//     return apiClient.loginSocial(body);
//   }
//
//   @override
//   Future<APIResponse<ForgotPassWordRes>> forgotPassword(
//       {required String userName}) {
//     final body = {Utils.isEmail(userName) ? "email" : "phone": userName};
//     return apiClient.forgotPassword(body);
//   }
//
//   @override
//   Future<APIResponse> changePassword(
//       {required String token, required String code, required String password}) {
//     final body = {
//       "token": token,
//       "code": code,
//       "password": password,
//     };
//     return apiClient.changePassword(body);
//   }
//
//   @override
//   Future<LoginRes> refreshToken(String refreshToken) {
//     final body = {"refresh_token": refreshToken};
//     return apiClient.refreshToken(body);
//   }
//
//   @override
//   Future<APIResponse> pushFcmToken(
//       {required String fcmToken, required String deviceInfo}) {
//     final body = {"fcmToken": fcmToken, "deviceInfo": deviceInfo};
//     return apiClient.pushFcmToken(body);
//   }
//
//   @override
//   Future<APIResponse> deleteFcmToken({required String fcmToken}) {
//     final body = {"fcmToken": fcmToken};
//     return apiClient.deleteFcmToken(body);
//   }
// }
