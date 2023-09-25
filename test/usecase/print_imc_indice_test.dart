import 'package:dio_desafio_imc/entities/person.dart';
import 'package:dio_desafio_imc/usecase/calculate_imc.dart';
import 'package:test/test.dart';

void main() {
  test('print imc indice ...', () async {
    //arrange
    String name = 'Kaiser';
    double weight = 110;
    double height = 1.90;
    //act
    final result = CalculateImcUsecase().call(person: Person(name: name, weight: weight, height: height));

    expect(result, equals(30.470914127423825));
    expect(result, isA<double>());
    expect(result, isPositive);
  });
  test('Should return a Exception if altura equals a 0', () async {
    //arrange
    String name = 'Kaiser';
    double weight = 110;
    double height = 0; //equal 0
    //act

    expect(() => CalculateImcUsecase().call(person: Person(name: name, weight: weight, height: height)), throwsA(TypeMatcher<Exception>()));
  });
  test('Should return a Exception if peso equals a 0', () async {
    //arrange
    String name = 'Kaiser';
    double weight = 0;
    double height = 1.90; //equal 0
    //act

    expect(() => CalculateImcUsecase().call(person: Person(name: name, weight: weight, height: height)), throwsA(TypeMatcher<Exception>()));
  });
  test('Should return a Exception if peso < a 0', () async {
    //arrange
    String name = 'Kaiser';
    double weight = -1;
    double height = 1.90; //equal 0
    //act

    expect(() => CalculateImcUsecase().call(person: Person(name: name, weight: weight, height: height)), throwsA(TypeMatcher<Exception>()));
  });
  test('Should return a Exception if altura < a 0', () async {
    //arrange
    String name = 'Kaiser';
    double weight = 110;
    double height = -1; //equal 0
    //act

    expect(() => CalculateImcUsecase().call(person: Person(name: name, weight: weight, height: height)), throwsA(TypeMatcher<Exception>()));
  });
}
