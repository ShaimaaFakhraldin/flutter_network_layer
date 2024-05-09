import '../../../core/src/entity/entity.dart';
import '../request/request_api.dart';

class NetworkResponseModel<T extends Entity> {
  final RequestApi api;
  final int statusCode;
  final String message;
  final dynamic rowObject;
  T? object;

  NetworkResponseModel({
    required this.api,
    required this.statusCode,
    required this.message,
    required this.rowObject,
    this.object,
  });
}
