import 'package:flutter_network_layer/data/dto/country.dart';

import '../../app_module/network/src/config/network_configuration.dart';
import '../../app_module/network/src/network/network_client.dart';
import '../../domain/entity/country_entity.dart';
import '../../domain/repository/get_all_country_repository.dart';
import '../api/network_config.dart';
import '../api/paths/country_path.dart';

class CountryRepositoryImpl implements CountryRepository {
  @override
  Future<List<CountryEntity>> getCountry({int page = 0}) async {
    NetworkClient client = NetworkClient.fromConfig(MyNetworkConfig(
      baseURL: BaseURL(
        baseURL: "https://restcountries.com/",
      ),
    ));
    var res = await client.request<Country>(CountryPath(
      parser: CountryEntityParser(),
    ));
    List<CountryEntity> list2 = [];
    List<dynamic> rowObject = [];
    res.fold((error) {}, (data) {
      rowObject = data.rowObject;
    });

    for (var element in rowObject) {
      list2.add(CountryEntity.fromJson(element));
    }
    return list2;
  }
}
