import 'package:flutter/cupertino.dart';
import 'package:pilar_mobile_case/domain/repositories/properties_repository.dart';
import 'package:pilar_mobile_case/presentation/properties/properties_states.dart';

class PropertiesStore extends ValueNotifier<PropertiesState> {
  final PropertiesRepository repository;
  PropertiesStore(this.repository) : super(InitialPropertiesState());

  fetchProperties() async {
    value = LoadingPropertiesState();
    try {
      final properties = await repository.getProperties();
      value = SuccessPropertiesState(properties);
    } catch (e) {
      value = ErrorPropertiesState(e.toString());
    }
  }
}
