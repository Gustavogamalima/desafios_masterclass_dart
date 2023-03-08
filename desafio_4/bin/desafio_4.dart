void main() {
  CPFValidator cpf = CPFValidator('412.016.380-62');
  print(cpf.validate());
}

class CPFValidator {
  final String _cpf;

  CPFValidator(this._cpf);

  bool validate() {
    final cleanCPF = _cpf.replaceAll(
        RegExp(r'[^\d]'), ''); // remove caracteres não numéricos
    if (cleanCPF.length != 11) return false; // verifica se o CPF tem 11 dígitos

    // Cálculo do primeiro dígito verificador
    var sum = 0;
    for (var i = 0; i < 9; i++) {
      sum += int.parse(cleanCPF[i]) * (10 - i);
    }
    var digit = (sum * 10) % 11;
    if (digit == 10) digit = 0;
    if (digit != int.parse(cleanCPF[9])) return false;

    // Cálculo do segundo dígito verificador
    sum = 0;
    for (var i = 0; i < 10; i++) {
      sum += int.parse(cleanCPF[i]) * (11 - i);
    }
    digit = (sum * 10) % 11;
    if (digit == 10) digit = 0;
    if (digit != int.parse(cleanCPF[10])) return false;

    return true; // CPF válido
  }
}
