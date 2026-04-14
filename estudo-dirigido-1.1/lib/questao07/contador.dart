class Contador {
  int valor;

  // Construtor
  Contador(this.valor) {
    if (valor < 0) {
      valor = 0;
    }
  }

  // Aumenta 1
  void incrementar() {
    valor++;
  }

  // Diminui 1 (sem ficar negativo)
  void decrementar() {
    if (valor > 0) {
      valor--;
    }
  }

  // Zera o contador
  void zerar() {
    valor = 0;
  }

  // Mostra o valor
  void exibirValor() {
    print("Valor: $valor");
  }
}