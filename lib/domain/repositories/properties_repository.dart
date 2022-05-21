import '../../data/models/properties_model.dart';

abstract class PropertiesRepository {
  Future<List<PropertiesModel>> getProperties();
}
