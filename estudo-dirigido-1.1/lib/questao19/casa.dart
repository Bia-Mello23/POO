class Comodo {
  String nome;
  double tamanho;
 
  // Construtor
  Comodo(this.nome, this.tamanho) {
    if (nome.isEmpty) {
      throw Exception("Nome do cômodo não pode ser vazio");
    }
    if (tamanho <= 0) {
      throw Exception("Tamanho deve ser maior que 0");
    }
  }
 
  void exibirComodo() {
    print("Cômodo: $nome | Tamanho: ${tamanho}m²");
  }
}

class Casa {
  String proprietario;
  Comodo comodo1;
  Comodo comodo2;
  Comodo comodo3;
 
  // Construtor
  Casa(this.proprietario, this.comodo1, this.comodo2, this.comodo3) {
    if (proprietario.isEmpty) {
      throw Exception("Proprietário não pode ser vazio");
    }
  }
 
  // Método para calcular área total
  double calcularAreaTotal() {
    return comodo1.tamanho + comodo2.tamanho + comodo3.tamanho;
  }
 
  // Método para exibir dados
  void exibirCasa() {
    print("Proprietário: $proprietario");
    print("-Cômodos-");
    comodo1.exibirComodo();
    comodo2.exibirComodo();
    comodo3.exibirComodo();
    print("-----------------");
    print("Área total: ${calcularAreaTotal()} m²");
  }
}