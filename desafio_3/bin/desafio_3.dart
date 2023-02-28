double? regraDeTres(
    {double? grupo1Valor1,
    double? grupo1Valor2,
    double? grupo2Valor1,
    double? grupo2Valor2}) {
  if (grupo1Valor1 == null &&
      grupo1Valor2 != null &&
      grupo2Valor1 != null &&
      grupo2Valor2 != null) {
    return grupo2Valor2 * grupo2Valor1 / grupo1Valor2;
  } else if (grupo1Valor2 == null &&
      grupo1Valor1 != null &&
      grupo2Valor1 != null &&
      grupo2Valor2 != null) {
    return grupo2Valor2 * grupo2Valor1 / grupo1Valor1;
  } else if (grupo2Valor1 == null &&
      grupo1Valor1 != null &&
      grupo1Valor2 != null &&
      grupo2Valor2 != null) {
    return grupo1Valor2 * grupo2Valor2 / grupo1Valor1;
  } else if (grupo2Valor2 == null &&
      grupo1Valor1 != null &&
      grupo1Valor2 != null &&
      grupo2Valor1 != null) {
    return grupo1Valor1 * grupo2Valor1 / grupo1Valor2;
  } else {
    return null;
  }
}

void main() {
  double? valorEncontrado = regraDeTres(
      grupo1Valor1: 2, grupo1Valor2: 4, grupo2Valor1: 6); // retorna 3.0
  print(valorEncontrado);
}
