import 'package:pilar_mobile_case/data/models/properties_model.dart';

abstract class PropertiesState {}

class InitialPropertiesState extends PropertiesState {}

class LoadingPropertiesState extends PropertiesState {}

class SuccessPropertiesState extends PropertiesState {
  List<PropertiesModel> properties;
  SuccessPropertiesState(this.properties);
}

class ErrorPropertiesState extends PropertiesState {
  final String message;
  ErrorPropertiesState(this.message);
}
