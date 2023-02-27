import 'dart:io';

void main() {
  // solicita o peso do usuário
  stdout.write('Digite o peso em kg: ');
  double peso = double.parse(stdin.readLineSync()!);

  // solicita a altura do usuário
  stdout.write('Digite a altura em metros: ');
  double altura = double.parse(stdin.readLineSync()!);

  // calcula o IMC
  double imc = calcularIMC(peso, altura);

  // exibe o resultado
  print('Seu IMC é $imc');
}

double calcularIMC(double peso, double altura) {
  return peso / (altura * altura);
}
