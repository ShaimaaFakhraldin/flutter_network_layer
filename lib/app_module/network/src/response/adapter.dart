import 'package:flutter_network_layer/app_module/network/src/response/response_model.dart';

import '../../../core/src/entity/entity.dart';
import '../../../core/src/utils/result.dart';
import '../network/network_client.dart';
import '../network/network_failure.dart';
import '../request/request_api.dart';

abstract class Adapter {
  Future<Result<NetworkFailure, NetworkResponseModel<T>>>
      onResponse<T extends Entity>(
    Result<NetworkFailure, NetworkResponseModel<T>> response,
    RequestApi api,
    NetworkClient client,
  );
}
