import 'dart:convert';

import 'package:collection/collection.dart';

class ResponseData {
  bool success;
  int statusCode;
  dynamic data;
  Map headers;
  String message;
  ResponseData({
    required this.success,
    required this.statusCode,
    required this.data,
    required this.headers,
    required this.message,
  });

  ResponseData copyWith({
    bool? success,
    int? statusCode,
    dynamic? data,
    Map? headers,
    String? message,
  }) {
    return ResponseData(
      success: success ?? this.success,
      statusCode: statusCode ?? this.statusCode,
      data: data ?? this.data,
      headers: headers ?? this.headers,
      message: message ?? this.message,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'success': success,
      'statusCode': statusCode,
      'data': data,
      'headers': headers,
      'message': message,
    };
  }

  factory ResponseData.fromMap(Map<String, dynamic> map) {
    return ResponseData(
      success: map['success'] ?? false,
      statusCode: map['statusCode']?.toInt() ?? 0,
      data: map['data'] ?? null,
      headers: Map.from(map['headers']),
      message: map['message'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ResponseData.fromJson(String source) =>
      ResponseData.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ResponseData(success: $success, statusCode: $statusCode, data: $data, headers: $headers, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final mapEquals = const DeepCollectionEquality().equals;

    return other is ResponseData &&
        other.success == success &&
        other.statusCode == statusCode &&
        other.data == data &&
        mapEquals(other.headers, headers) &&
        other.message == message;
  }

  @override
  int get hashCode {
    return success.hashCode ^
        statusCode.hashCode ^
        data.hashCode ^
        headers.hashCode ^
        message.hashCode;
  }
}
