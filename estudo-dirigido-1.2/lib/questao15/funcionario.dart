class Funcionario {
  String _nome;
  String _cargo;
  double _salario;

  // Construtor para Estagiário
  Funcionario.estagiario(this._nome) 
      : _cargo = "Estagiário", 
        _salario = 1200.0;

  // Construtor para Pleno
  Funcionario.pleno(this._nome, this._salario) 
      : _cargo = "Pleno";

  // Construtor para Gerente
  Funcionario.gerente({required String nome, double bonus = 1000.0})
      : _nome = nome,
        _cargo = "Gerente",
        _salario = 5000.0 + bonus;

  double calcularPagamentoMensal() {
    return _salario;
  }

  void exibirDados() {
    print("----------------------------");
    print("Nome: $_nome");
    print("Cargo: $_cargo");
    print("Salário: R\$ ${_salario.toStringAsFixed(2)}");
  }
}