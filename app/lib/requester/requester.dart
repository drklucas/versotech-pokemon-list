import 'package:app/models/response.data.dart';
import 'package:flutter/material.dart';

abstract class RequestDispatcher {
  Future<ResponseData> get(
    String url, {
    required BuildContext context,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
    bool? fullUrl, 
  });
}
