abstract class ImcError implements Exception {}

class ImcheightEqualsZero extends ImcError {
  @override
  String toString() => 'Imc weight equals zero';
}

class ImcWeightEqualsZero extends ImcError {
  @override
  String toString() => 'Imc height equals zero';
}
