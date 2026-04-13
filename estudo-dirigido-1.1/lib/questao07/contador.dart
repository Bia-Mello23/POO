class Contador {
  int valor;

  // Construtor
  Contador(this.valor) {
    if (valor < 0) {
      throw Exception("O valor inicial deve ser maior ou igual a 0");
    }
  }

  // Incrementar +1
  void incrementar() {
    valor++;
  }

  // Decrementar -1
  void decrementar() {
    if (valor > 0) {
      valor--;
    }
  }

  // Zerar
  void zerar() {
    valor = 0;
  }

  // Exibir valor
  void exibirValor() {
    print("Valor atual: $valor");
  }
}