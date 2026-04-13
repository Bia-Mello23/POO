class Pessoa {
  String nome;
  int idade;

  // Construtor
  Pessoa(this.nome, this.idade) {
    // Validações
    if (nome.isEmpty) {
      throw Exception("O nome não pode ser vazio.");
    }
    if (idade < 0) {
      throw Exception("A idade deve ser maior ou igual a 0.");
    }
  }

  // Método para exibir dados
  void exibirDados() {
    print("Nome: $nome");
    print("Idade: $idade");
    print("------------");
  }
}