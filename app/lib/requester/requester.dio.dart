import 'dart:convert';

import 'package:app/models/response.data.dart';
import 'package:app/requester/requester.dart';
import 'package:app/routes/api/routes.dart';
import 'package:dio/dio.dart';
import 'package:flutter/src/widgets/framework.dart';

class DioRequestDispatcher extends RequestDispatcher {
  final dio = Dio();

  @override
  Future<ResponseData> get(
    String url, {
    required BuildContext context,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) async {
    Response response;

    try {
      Map<String, dynamic> headers0 = {
        "Content-Type": "application/json",
        "Accept": "application/json",
      };

      Map<String, dynamic> data0 = {};

      response = await dio.get(
        ApiRoutes.URL + url,
        options: Options(
          headers: headers0,
          validateStatus: (status) => true,
        ),
        queryParameters: queryParameters,
      );

      return ResponseData.fromMap({
        'success': true,
        'statusCode': response.statusCode,
        'data': response.data,
        'headers': response.headers.map,
        'message': response.statusMessage,
      });
    } on DioException catch (e) {
      //implementar lógica para erros
      print(e);
      return ResponseData.fromMap({
        'success': false,
        'statusCode': e.response != null ? e.response!.statusCode : 500,
        'data': e.response?.data,
        'headers': {},
        'message': e.message,
      });
    }
  }
}
