import 'dart:math' show Random;

class CifraDeVigenere {
  String chave = '';

  // Gera uma chave aleatória com o mesmo comprimento do texto a ser criptografado
  void gerarChave(int comprimento) {
    final aleatorio = Random();
    chave = List.generate(
            comprimento, (_) => String.fromCharCode(65 + aleatorio.nextInt(26)))
        .join(); // gera uma string aleatória de letras maiúsculas
  }

  // Criptografa o texto usando a Cifra de Vigenere
  String criptografar(String texto) {
    final textoCriptografado = StringBuffer();
    for (var i = 0; i < texto.length; i++) {
      final charTexto = texto[i].toUpperCase().codeUnitAt(0);
      final charChave = chave[i % chave.length].toUpperCase().codeUnitAt(0);
      if (charTexto < 65 || charTexto > 90) {
        // Caracteres não-letras não são transformados
        textoCriptografado.writeCharCode(charTexto);
      } else {
        final charCriptografado = ((charTexto + charChave - 2 * 65) % 26 + 65);
        textoCriptografado.writeCharCode(charCriptografado);
      }
    }
    return textoCriptografado.toString();
  }

  // Descriptografa o texto usando a Cifra de Vigenere
  String descriptografar(String textoCriptografado) {
    final textoDescriptografado = StringBuffer();
    for (var i = 0; i < textoCriptografado.length; i++) {
      final charTextoCriptografado =
          textoCriptografado[i].toUpperCase().codeUnitAt(0);
      final charChave = chave[i % chave.length].toUpperCase().codeUnitAt(0);
      if (charTextoCriptografado < 65 || charTextoCriptografado > 90) {
        // Caracteres não-letras não são transformados
        textoDescriptografado.writeCharCode(charTextoCriptografado);
      } else {
        final charDescriptografado =
            ((charTextoCriptografado - charChave + 26) % 26 + 65);
        textoDescriptografado.writeCharCode(charDescriptografado);
      }
    }
    return textoDescriptografado.toString();
  }
}

void main() {
  final cifra = CifraDeVigenere();

  final textoOriginal = 'OLÁ, MUNDO!';
  print('Texto original: $textoOriginal\n');

  cifra.gerarChave(textoOriginal.length);
  print('Chave gerada: ${cifra.chave}\n');

  final textoCriptografado = cifra.criptografar(textoOriginal);
  print('Texto criptografado: $textoCriptografado\n');

  final textoDescriptografado = cifra.descriptografar(textoCriptografado);
  print('Texto descriptografado: $textoDescriptografado');
}
