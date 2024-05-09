import 'package:flutter_network_layer/app_module/network/src/request/request_api.dart';

import '../../../core/src/utils/result.dart';
import '../network/network_client.dart';
import '../network/network_failure.dart';

abstract class AppInterceptor {
  Future<Result<NetworkFailure, RequestApi>> onRequest(
    RequestApi api,
    NetworkClient client,
  );
}
