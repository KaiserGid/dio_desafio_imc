import 'dart:convert';
import 'dart:io';

import 'package:dio_desafio_imc/entities/person.dart';
import 'package:dio_desafio_imc/usecase/calculate_imc.dart';
import 'package:dio_desafio_imc/usecase/print_imc_indice.dart';

void executeIMC() {
  print('Insira seu nome');
  String name = stdin.readLineSync(encoding: utf8) ?? 'Nome não inserido';

  print('Insira seu peso em Kg');
  double weight = double.tryParse(stdin.readLineSync()!.replaceAll(',', '.')) ?? 0;

  print('Insira sua altura metros');
  double height = double.tryParse(stdin.readLineSync()!.replaceAll(',', '.')) ?? 0;

  double indiceImc = (CalculateImcUsecase().call(person: Person(name: name, weight: weight, height: height)));

  print('Olá $name seu indice IMC é: $indiceImc e está em estado de: ${PrintImcIndice().call(indiceImc)}');
}
