class Pessoa {
  String nome;
  int idade;

  // Construtor
  Pessoa(this.nome, this.idade);

  // Método para mostrar os dados
  void exibirDados() {
    print("\nNome: $nome");
    print("Idade: $idade");
  }
}
