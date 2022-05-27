import 'package:clean_arch_change_notifier/data/models/properties_model.dart';
import 'package:clean_arch_change_notifier/domain/repositories/properties_repository.dart';

class GetPropertiesUsecase {
  final PropertiesRepository repository;

  GetPropertiesUsecase(this.repository);

  Future<List<PropertiesModel>> call() async {
    return await repository.getProperties();
  }
}
