// Classe que representa um cartão de crédito
class CartaoCredito {
  // Atributo que armazena o número do cartão
  String numeroCartao;

  // Construtor que recebe o número do cartão como parâmetro e atribui ao atributo numeroCartao
  CartaoCredito(this.numeroCartao);

  // Método que verifica se o cartão é válido ou não
  bool validar() {
    // Remove espaços em branco e converte cada dígito para um inteiro
    List<int> numeros =
        numeroCartao.replaceAll(' ', '').split('').map(int.parse).toList();

    // Separa o último dígito do cartão e remove da lista de inteiros
    int ultimoDigito = numeros[numeros.length - 1];
    numeros.removeLast();

    // Inverte a lista de inteiros para facilitar a multiplicação por coluna
    numeros = numeros.reversed.toList();

    // Inicia uma variável soma como zero e percorre a lista de inteiros da esquerda para a direita
    int soma = 0;
    for (int i = 0; i < numeros.length; i++) {
      int num = numeros[i];

      // Multiplica cada número por 1 ou 2, dependendo da coluna em que está localizado
      if (i % 2 == 0) {
        num *= 2;

        // Se o resultado da multiplicação tiver dois dígitos, soma cada um separadamente
        if (num > 9) {
          // A operação ~/ realiza a divisão inteira do número por 10, descartando o resto. Por exemplo, 16 ~/ 10 resulta em 1.
          // A operação % retorna o resto da divisão do número por 10. Por exemplo, 16 % 10 resulta em 6.
          num = num ~/ 10 + num % 10;
        }
      }

      // Adiciona cada resultado à variável soma
      soma += num;
    }

    // Calcula o resto da divisão da soma por 10
    int resto = soma % 10;

    // Calcula o número necessário para adicionar ao resto da divisão para obter um múltiplo de 10 (ou seja, o resultado final do algoritmo Mod 10)
    int resultado = 10 - resto;
    if (resultado == 10) {
      resultado = 0;
    }

    // Verifica se o número obtido no passo anterior é igual ao último dígito do cartão. Se sim, o cartão é válido; caso contrário, é inválido.
    return resultado == ultimoDigito;
  }
}

// Função principal
void main() {
  // Define duas strings contendo números de cartão de crédito, uma inválida e outra válida
  String cartaoInvalido = '5419 8250 0346 1210';
  String cartaoValido = '4916 6418 5936 9080';

  // Cria dois objetos da classe CartaoCredito, um para cada número de cartão
  CartaoCredito cartao1 = CartaoCredito(cartaoInvalido);
  CartaoCredito cartao2 = CartaoCredito(cartaoValido);

  // Chama o método validar de cada objeto criado e imprime o resultado na tela
  print(cartao1.validar()); //
  print(cartao2.validar()); //
}
