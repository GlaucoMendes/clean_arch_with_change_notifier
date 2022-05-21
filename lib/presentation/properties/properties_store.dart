import 'package:flutter/cupertino.dart';
import 'package:pilar_mobile_case/domain/usercases/get_properties_usercase.dart';
import 'package:pilar_mobile_case/presentation/properties/properties_states.dart';

class PropertiesStore extends ValueNotifier<PropertiesState> {
  final GetPropertiesUsecase getPropertiesUsecase;
  PropertiesStore(
    this.getPropertiesUsecase,
  ) : super(InitialPropertiesState());

  fetchProperties() async {
    value = LoadingPropertiesState();
    try {
      final properties = await getPropertiesUsecase();
      value = SuccessPropertiesState(properties);
    } catch (e) {
      value = ErrorPropertiesState(e.toString());
    }
  }
}
