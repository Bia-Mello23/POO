class Aluno {
  // Atributos privados
  String _ra;
  String _nome;
  double _notaFinal;

  // Construtor com parâmetros nomeados obrigatórios 
  Aluno({
    required String ra,
    required String nome,
    required double notaFinal,
  })  : _ra = ra,
        _nome = nome,
        _notaFinal = notaFinal;

  // Método para verificar se o aluno está aprovado 
  bool aprovado() {
    return _notaFinal >= 6.0;
  }

  // Método para exibir as informações
  void exibirBoletim() {
    print("- Boletim -");
    print("RA: $_ra");
    print("Nome: $_nome");
    print("Nota Final: $_notaFinal");
    print("Situação: ${aprovado() ? 'Aprovado' : 'Reprovado'}");
    print("---------------------");
  }
}