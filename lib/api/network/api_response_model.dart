class ApiResponse<T> {
  final T? data;
  final int statusCode;
  final String? message;
  final Map<String, List<String>>? errors;
  final String? errorCode;
  final ApiMeta? meta;

  ApiResponse({
    this.data,
    required this.statusCode,
    this.message = '',
    this.errors,
    this.errorCode,
    this.meta,
  });

  factory ApiResponse.fromJson(
      Map<String, dynamic> json, T Function(dynamic data) fromJsonT) {
    return ApiResponse<T>(
      data: json['data'] != null ? fromJsonT(json['data']) : null,
      statusCode: json['statusCode'],
      message: json['message'],
      errors: json['errors'],
      errorCode: json['errorCode'],
      meta: json['meta'] != null ? ApiMeta.fromJson(json['meta']) : null,
    );
  }

  bool get isError => statusCode < 200 || statusCode >= 300;
}

class ApiMeta {
  ApiMeta();

  factory ApiMeta.fromJson(Map<String, dynamic> json) {
    // Add parsing logic for ApiMeta if necessary
    return ApiMeta();
  }
}
