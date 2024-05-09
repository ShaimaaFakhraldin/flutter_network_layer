import '../entity/country_entity.dart';

abstract class CountryRepository {
  Future<List<CountryEntity>> getCountry({int page = 0});
}
