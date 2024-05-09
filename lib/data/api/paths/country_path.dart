import '../../../app_module/network/src/network/http_method.dart';
import '../../../app_module/network/src/request/request_api.dart';

class CountryPath extends RequestApi {
  CountryPath({required super.parser, super.bodyParams});

  @override
  String get endPath => "v3.1/all";
  @override
  // TODO: implement method
  HTTPMethod get method => HTTPMethod.get;
}
