import 'package:freezed_annotation/freezed_annotation.dart';

part 'custom_response.freezed.dart';
part 'custom_response.g.dart';

@freezed
class CustomResponse with _$CustomResponse {
  const factory CustomResponse(
    bool? success,
    String? status,
    String? message,
    dynamic data,
  ) = _CustomResponse;

  factory CustomResponse.fromJson(Map<String, dynamic> json) => _$CustomResponseFromJson(json);

  factory CustomResponse.errorResponse() {
    return const CustomResponse(false, null, "Something went wrong.", null);
  }

  factory CustomResponse.successResponse() {
    return const CustomResponse(true, null, "Success", null);
  }
}

// @Freezed(genericArgumentFactories: true)
// class CustomResponse<T> with _$CustomResponse<T> {
//   factory CustomResponse(
//     bool? success,
//     String? status,
//     String? message,
//     T? data,
//   ) = _CustomResponse;

//   factory CustomResponse.fromJson(
//           Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
//       _$CustomResponseFromJson(json, fromJsonT);
// }
