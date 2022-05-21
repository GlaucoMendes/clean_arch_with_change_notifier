import 'dart:convert';
import 'package:http/http.dart' as http;

import '../../domain/repositories/properties_repository.dart';
import '../models/properties_model.dart';

class PropertiesRepositoryImpl implements PropertiesRepository {
  var client = http.Client();
  @override
  Future<List<PropertiesModel>> getProperties() async {
    final response = await client.get(Uri.parse('https://6287e15b7864d2883e8e64c0.mockapi.io/properties'));
    final data = await json.decode(response.body) as List;
    final properties = data.map((e) => PropertiesModel.fromJson(e)).toList();

    return properties;
  }
}
