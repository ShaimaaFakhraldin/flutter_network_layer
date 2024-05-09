import '../request/interceptor.dart';
import '../request/network_type.dart';
import '../response/adapter.dart';

class BaseURL {
  String baseURL;
  String baseVersionEndPath;
  BaseURL({
    required this.baseURL,
    this.baseVersionEndPath = "",
  });
}

abstract class NetworkConfiguration {
  BaseURL baseURL;
  double timeout;
  RequestType networkRequestType;
  List<AppInterceptor> interceptors;
  List<Adapter> adapters;

  NetworkConfiguration({
    required this.baseURL,
    this.interceptors = const [],
    this.adapters = const [],
    this.timeout = 500000,
    this.networkRequestType = RequestType.rest,
  });
}
