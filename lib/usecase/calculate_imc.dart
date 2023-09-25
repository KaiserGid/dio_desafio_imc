import 'package:dio_desafio_imc/entities/person.dart';
import 'package:dio_desafio_imc/errors/imc_error.dart';

class CalculateImcUsecase {
  double call({required Person person}) {
    try {
      if (person.height < 1) {
        return throw ImcWeightEqualsZero();
      }
      if (person.weight < 1) {
        return throw ImcheightEqualsZero();
      }

      double result = person.weight / (person.height * person.height);
      return result;
    } catch (e) {
      throw Exception(e);
    }
  }
}
