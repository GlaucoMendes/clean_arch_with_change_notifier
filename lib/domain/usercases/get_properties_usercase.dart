import 'package:pilar_mobile_case/data/models/properties_model.dart';
import 'package:pilar_mobile_case/domain/repositories/properties_repository.dart';

class GetPropertiesUsecase {
  final PropertiesRepository repository;

  GetPropertiesUsecase(this.repository);

  Future<List<PropertiesModel>> call() async {
    return await repository.getProperties();
  }
}
