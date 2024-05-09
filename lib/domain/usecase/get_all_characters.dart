import '../entity/country_entity.dart';
import '../repository/get_all_country_repository.dart';

class GetAllCountries {
  GetAllCountries({
    required CountryRepository repository,
  }) : _repository = repository;

  final CountryRepository _repository;

  Future<List<CountryEntity>> call({int page = 0}) async {
    final list = await _repository.getCountry(page: page);
    return list;
  }
}
