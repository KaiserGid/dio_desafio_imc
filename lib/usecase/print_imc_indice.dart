class PrintImcIndice {
  String call(double indice) {
    if (indice <= 18.5) {
      return 'Magreza';
    } else if (indice <= 24.9) {
      return "Normal";
    } else if (indice <= 29.9) {
      return "Sobrepeso";
    } else if (indice <= 34.9) {
      return "Obesidade Grau I";
    } else if (indice <= 39.9) {
      return "Obesidade Grau II";
    } else if (indice <= 40) {
      return "Obesidade Grau III";
    } else {
      return 'Cara você ta fudido';
    }
  }
}
