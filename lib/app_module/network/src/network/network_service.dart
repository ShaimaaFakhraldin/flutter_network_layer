// TODO: should handle patch and download
import 'package:flutter_network_layer/app_module/network/src/network/network_failure.dart';

import '../../../core/src/entity/entity.dart';
import '../../../core/src/utils/result.dart';
import '../config/network_configuration.dart';
import '../request/request_api.dart';
import '../response/response_model.dart';

abstract class NetworkService {
  final NetworkConfiguration config;
  NetworkService({required this.config});

  Future<Result<NetworkFailure, NetworkResponseModel<T>>> get<T extends Entity>(
      RequestApi api);

  Future<Result<NetworkFailure, NetworkResponseModel<T>>>
      post<T extends Entity>(RequestApi api);

  Future<Result<NetworkFailure, NetworkResponseModel<T>>> put<T extends Entity>(
      RequestApi api);

  Future<Result<NetworkFailure, NetworkResponseModel<T>>>
      delete<T extends Entity>(RequestApi api);

  Future<Result<NetworkFailure, NetworkResponseModel<T>>>
      patch<T extends Entity>(RequestApi api);
}
