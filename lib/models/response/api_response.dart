// import 'package:json_annotation/json_annotation.dart';
//
// part 'api_response.g.dart';
//
// @JsonSerializable(genericArgumentFactories: true)
// class APIResponse<T> {
//   APIResponse({
//     this.data,
//     this.code,
//     this.message,
//   });
//
//   factory APIResponse.fromJson(
//       Map<String, dynamic> json,
//       T Function(Object? json) fromJsonT,
//       ) =>
//       APIResponse<T>(
//         data: json['data'] != null
//             ? fromJsonT(json['data'])
//             : json['content'] != null
//             ? fromJsonT(json['content'])
//             : null,
//         code: json['code'] as int?,
//         message: json['message'] as String?,
//       );
//
//   final T? data;
//   final int? code;
//   final String? message;
//
//   bool get isSuccess => code == 1;
//
//   Map<String, dynamic> toJson(Object? Function(T value) toJsonT) {
//     final result = <String, dynamic>{
//       'code': code,
//       'message': message,
//     };
//
//     if (data != null) {
//       result['data'] = toJsonT(data!);
//     }
//
//     return result;
//   }
// }
