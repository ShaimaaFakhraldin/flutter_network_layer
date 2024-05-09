import 'package:dio/dio.dart';

import '../../../core/src/entity/entity.dart';
import '../network/http_method.dart';

abstract class EndPathParam {
  final Map<String, dynamic> bodyParams;
  final Map<String, dynamic> queryParams;
  final FormData? formdata;
  EndPathParam({
    required this.bodyParams,
    required this.queryParams,
    this.formdata,
  });
}

abstract class RequestApi extends EndPathParam {
  final String? alterNativeBaseURL = "";
  final String endPath = "";
  final bool shouldRequireAccessToken = true;
  final HTTPMethod method = HTTPMethod.get;
  final Map<String, String>? headers = {};
  final EntityParser? parser;

  RequestApi({
    this.parser,
    super.bodyParams = const {},
    super.queryParams = const {},
    super.formdata,
  });
}
