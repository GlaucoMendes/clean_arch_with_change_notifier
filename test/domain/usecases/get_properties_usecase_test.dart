import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:clean_arch_change_notifier/data/models/properties_model.dart';
import 'package:clean_arch_change_notifier/domain/repositories/properties_repository.dart';
import 'package:clean_arch_change_notifier/domain/usecases/get_properties_usercase.dart';

class MockPropertiesRepository extends Mock implements PropertiesRepository {}

void main() {
  late GetPropertiesUsecase usecase;
  late MockPropertiesRepository mockPropertiesRepository;
  setUpAll(() {
    mockPropertiesRepository = MockPropertiesRepository();
    usecase = GetPropertiesUsecase(mockPropertiesRepository);
  });

  test('deve retornar uma lista de PropertiesModel', () async {
    when(() => mockPropertiesRepository.getProperties()).thenAnswer((_) => Future.value([]));
    final result = await usecase();
    expect(result, isA<List<PropertiesModel>>());
  });
}

class TesteMock extends Mock implements Teste {}

class Teste {
  String teste() {
    return '123';
  }
}
