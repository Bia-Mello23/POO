class Aluno {
  String _nome;
  double _nota1;
  double _nota2;

  Aluno(this._nome, this._nota1, this._nota2) {
    if (_nome.isEmpty) {
      print("Erro: O nome não pode ser vazio!");
    }
    if (_nota1 < 0 || _nota1 > 10) {
      print("Erro: A nota1 deve estar entre 0 e 10!");
    }
    if (_nota2 < 0 || _nota2 > 10) {
      print("Erro: A nota2 deve estar entre 0 e 10!");
    }
  }

  String get nome => _nome;
  double get nota1 => _nota1;
  double get nota2 => _nota2;

  double calcularMedia() {
    return (_nota1 + _nota2) / 2;
  }

  void verificarAprovacao() {
    if (calcularMedia() >= 6) {
      print("Situação: APROVADO ");
    } else {
      print("Situação: REPROVADO ");
    }
  }

  void exibirBoletim() {
    print("Nome: $_nome");
    print("Nota 1: $_nota1");
    print("Nota 2: $_nota2");
    print("Média: ${calcularMedia()}");
    verificarAprovacao();
  }
}